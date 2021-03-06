/*      Parse    and    initialize/reset        parameters      */
        
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
        
#include "win.h"
#include "simdefs.h"
#include "classdef.h"
#include "externs.h"
#include "macros.h"
#include "simproto.h"
    
/*  Here we define if want to keep track of BUGS */  
/*  #define BUGGY*/
extern FILE *buggy;
        
int simulate(HWND GraphWnd, FILE *outfs);
        
#define  MAX_PLACES 20   /* Max number of locations in input file
                                   which can be marked */
        
enum Codes { ENDFILE, CONNECT, DO, GOTO, INCLUDE, INPUT, NEWSET,
	     OOUT, RANDSEED, RESET, READFILE, RUN, WRITEINPUTS, WRITEPET, 
	     WRITEABSPET, WRITEWTS, WWFILE }; 
        
/*******************************************************************/
        
/*      Parse the input and return the code for the next operation */
        
        
Codes nextcode(FILE *ifd)
{
  int code;
  char        instring[120];
        
  while((code = getcode(ifd,instring)) != EOF)        {
        
    switch(*instring)      
      {
      case '#':
	return(INCLUDE);
      case 'c':
	return(CONNECT);
      case 'd':
	return(DO);
      case 'g':
	return(GOTO);
      case 'i':
	return(INPUT);
      case 'o':
	return(OOUT);
      case 'r':
	switch(instring[1])  
	  {
	  case 'a':
	    return(RANDSEED);
	  case 'e':
	    return(RESET);
	  case 'u':
	    return(RUN);
	  case 'f':
	    return(READFILE);
	  default:
	    break;
	  }
      case 's':
	return(NEWSET);
      case 'w':
	switch(instring[1])  
	  {
	  case 'a':
	    return(WRITEABSPET);
	  case 'p':
	    return(WRITEPET);
	  case 'w':
	    return(WWFILE);
	  case 'r':
	    switch(instring[2]) 
	      {
	      case 'w':
		return(WRITEWTS);
	      case 'i':
		return(WRITEINPUTS);
	      default:
		break;
	      }
	  default:
	    break;
	  }
        
      default:
	break;
      }
  }
  return(ENDFILE);
}
        
/*******************************************************************/
        
        
double      bign = 0.0;
        
int init(HWND ThisWind, FILE *ifd, FILE *ofd)
{
  int     i,j;
  int     old_line;
  Codes   Code;
  float   x;
  FILE    *tmpfd;
  char    tmpstr[240], tmpstr1[24], tmpstr2[24];
  struct  NodeSet *set1;
  struct  seek_struct 
    {
      int   nseeks;
      long  loc;
    } file_places[MAX_PLACES];
        
        
  if(bign == 0.0)
    bign = exp(31.0) - 1.0;
  n_line = 0;
          
  while((Code = nextcode(ifd)) != ENDFILE)        
    {
      switch(Code)  
	{
	case CONNECT:
	  parseConnect(ifd);
	  break;
        
	case DO:
	  if(getint(ifd,&i) && getint(ifd,&j)) 
	    {
	      if(i >= 0 && i < MAX_PLACES)      
		{
		  file_places[i].loc = ftell(ifd);
		  file_places[i].nseeks = j;
		}
	    }
	  else 
	    {
	      sprintf(MsgStr,
		      "Error in loop index %d: in line %d\n",i,n_line);
	      Errmsg(MsgStr);
	    }
	  break;
        
	case GOTO:
	  if(getint(ifd,&i)) 
	    {
	      if(i >= 0 && i < MAX_PLACES)    
		{
		  if(file_places[i].nseeks > 0) 
		    {
		      if(fseek(ifd,file_places[i].loc,0) < 0) 
			{
			  sprintf(MsgStr,"Bad seek to location %d\n",i);
			  Errmsg(MsgStr);
			}
		      else
			file_places[i].nseeks--;
		    }
		}
        
	      else 
		{
		  sprintf(MsgStr,"Error in find index %d: ",i);
		  Errmsg(MsgStr);
		  return(-1);
		}
	    }
	  break;
        
	case INCLUDE:  /*  Read specs from separate file  */
	  if( getcode(ifd,tmpstr) != A_STRING) 
	    {
	      sprintf(MsgStr, "Error in parse; Expecting string, got: %s\n",
                                  tmpstr);
	      Errmsg(MsgStr);
	      break;
	    }
	  if((tmpfd = fopen(tmpstr,"r")) != NULL) 
	    {
	      old_line = n_line;
	      n_line = 0;
	      init(ThisWind, tmpfd, ofd);
	      fclose(tmpfd);
	      n_line = old_line;
	    }
	  else  
	    {
	      sprintf(MsgStr,"Cannot open spec file %s\n",tmpstr);
	      Errmsg(MsgStr);
	    }
	  break;
        
	case NEWSET:
	  parseSet(ifd);
	  InvalidateRect(ThisWind, NULL, TRUE);
	  UpdateWindow(ThisWind);
	  break;
        
	case RANDSEED:    /* Set seed for random number generator*/
	  if(getint(ifd,&i) == EOF)
	    return(ENDFILE);
	  if(i == 0) srand48(time(NULL));
	  else  srand48(i);
	  break;
        
	case RESET:
	  break;
        
	case RUN:
	  if(getint(ifd, &i)) 
	    {
	      if(i > 0)
		N_Iter = i;
	      if(ofd != NULL) 
		{
		  /* Need a function called "status" here*/
		  sprintf(MsgStr, "Run: %d\n", N_Iter);
		  fprintf(stderr, MsgStr);
		  simulate(ThisWind, ofd);
		}
	      else 
		{
		  sprintf(MsgStr,"Cannot open output file %s",OutputFile);
		  Errmsg(MsgStr);
		  return(-1);
		}
	    }
	  break;
        
	case WRITEABSPET:    /* Write Absolute(E+I) PET */
	  if(getint(ifd,&i)) 
	    {
	      if(i == 0)  
		{	/* Write it just this once if 0 interval */
		  Write_APET(Pet_fs);
		  WriteAbsPet = 0;
		}
	      if(i > 0)  
		{		/* Set PET writing interval  */
		  WriteAbsPet = i;
		  WritePet = 0;  /* and set regular PET write to 0 */
		}
	      else            /* Turn off ABS PET writing   */
		WriteAbsPet = -1;
	    }
	  else {
	    sprintf(MsgStr,
		    "Error in Pet Write spec (%d): in line %d\n",i,n_line);
	    Errmsg(MsgStr);
	  }

	  break;
	  
	case WRITEPET:  /* Write PET as separate E and I sums */
	  if(getint(ifd,&i)) 
	    {
	      if(i == 0)  
		{	/* Write it just this once if 0 interval */
		  WritePET(Pet_fs);
		  WritePet = 0;
		}
	      if(i > 0)  
		{		/* Set PET writing interval  */
		  WritePet = i;
		  WriteAbsPet = 0;  /* and set ABS PET write to 0 */
		}
	      else            /* Turn off PET writing   */
		WritePet = -1;
	    }
	  else 
	    {
	      sprintf(MsgStr,
		  "Error in Pet Abs Write spec (%d): in line %d\n",i,n_line);
	      Errmsg(MsgStr);
	    }

	  break;
      
	case WWFILE:  /*  Write out weights  */
	  if( getcode(ifd,tmpstr1) != A_STRING) 
	    {	/* Get name of set 1 */
	      sprintf(MsgStr, "Error in parsing weight write: Expecting string, got: %s\n",
		      tmpstr);
	      Errmsg(MsgStr);
	      break;
	    }
	  if( getcode(ifd,tmpstr2) != A_STRING) 
	    {	/* Get name of set 2 */
	      sprintf(MsgStr, "Error in parsing weight write: Expecting string, got: %s\n",
		      tmpstr1);
	      Errmsg(MsgStr);
	      break;
	    }
	  strcpy(tmpstr, tmpstr1);
	  strcat(tmpstr, tmpstr2);
	  strcat(tmpstr, ".w");
	  set1 = getset(tmpstr1);
	  if(set1 == NULL) 
	    {
	      sprintf(MsgStr, "Cannot find set %s to write weights\n",tmpstr1);
	      break;
	    }
	  if((tmpfd = fopen(tmpstr,"w")) != NULL) 
	    {
	      WriteWts(tmpfd,N_Iter,set1);
	      fclose(tmpfd);
	    }
	  else  
	    {
	      sprintf(MsgStr,"Cannot open spec file %s\n",tmpstr);
	      Errmsg(MsgStr);
	    }
	  break;
        
	default:
	  break;
	}
    }
  return(0);
}
        
