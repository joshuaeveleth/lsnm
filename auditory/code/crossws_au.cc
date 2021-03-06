/* crossws_au.cc    Modified by B. Warner.  7/15/03*/
/* make the .ws files for cross weights
read from input file crossws_au.in. 
The input file has two lines for fanout specification.
The 1st line is specification for homologous connection
The 2nd line is for nonhomologous connection
if the originating node is inhibitory, the weight will be converted to
    a negative quantity in the code

modifications:  In auditory model, all regions before STG are 1x81 matrices.
This version of the code checks what regions we are connecting and puts
the corresponding matrix size into the .ws file.

*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define maxline 80
#define regions 10

int fanr[2],fanc[2],seed;
float perc, base[2],scale[2];

void  writeo(char *source, char * destination,int connect_type, int R, int L);

int main ()
{
  FILE  *infile;
  int i,j,k,ii,jj;

  char *right[2][regions] = 
    {{(char*)"ea1u",(char*)"ea1d",(char*)"ea2u",(char*)"ea2d",(char*)"ea2c",(char*)"estg",(char*)"exfs",(char*)"efd1",(char*)"efd2",(char*)"exfr"},
     {(char*)"ia1u",(char*)"ia1d",(char*)"ia2u",(char*)"ia2d",(char*)"ia2c",(char*)"istg",(char*)"infs",(char*)"ifd1",(char*)"ifd2",(char*)"infr"}};

  char *left[2][regions] =  
    {{(char*)"eg1u",(char*)"eg1d",(char*)"eg2u",(char*)"eg2d",(char*)"eg2c",(char*)"egtg",(char*)"egfs",(char*)"egd1",(char*)"egd2",(char*)"egfr"}, 
     {(char*)"ig1u",(char*)"ig1d",(char*)"ig2u",(char*)"ig2d",(char*)"ig2c",(char*)"igtg",(char*)"igfs",(char*)"igd1",(char*)"igd2",(char*)"igfr"}};

  char Infile[maxline];

  const char *BASE = getenv("LSNM");

  strcpy(Infile,BASE);
  strcat(Infile,"code/crossws_au.in");
  if( (infile = fopen(Infile, "r")) == NULL)
    {
      printf("can't open %s\n", Infile);
      exit(0);
    }

 fscanf(infile,"%d %f",&seed,&perc);

  for(k = 0; k < 2; k++)
    fscanf(infile,"%d %d %f %f", &fanr[k],&fanc[k],&base[k],&scale[k]);

  for(i = 0; i < regions; i++)
    {
      for(j = 0; j < regions; j++)
	{
	  for(ii = 0; ii < 2; ii++)
	    for(jj = 0; jj < 2; jj++)
	      {
		k = ii*2 + jj;
		  {
		    writeo(right[ii][i],left[jj][j],k,i,j);
		    writeo(left[jj][j],right[ii][i],k,j,i);
		  }
	      }    /*end of jj loop */

	}  /*end of j loop */
    }/*end of i loop */
}

/*-----------------*/

/*connect_type 
   0: excitatory to excitatory
   1: excitatory to inhibitory
   2: inhibitory to excitatory, need change base and scale to negative value
   3: inhibitory to inhibitory, need change base and scale to negative value
 R: index of right region
 L: index of left region
 base and scale are for excitatory to excitatory connections, i.e.
   connect_type = 0.  If connect_type = 2 or 3, we reduce the strength by
   3/4.  If connect_type = 4, we reduce the strength by 5/6.  
   This is consistent with the ratio in the basic unit.
*/
void  writeo(char *source, char * destination, int connect_type, int R, int L)
  {
    FILE *outfile;
    char fname[maxline];
    int i, j;

    extern int fanr[2],fanc[2],seed;
    extern float perc, base[2],scale[2];
    int fanr0,fanc0,Ix,Iy,Ox,Oy;
    float base0,scale0;

    strcpy(fname,source);
    strcat(fname,destination);
    strcat(fname,".ws");

    if(R == L) /*homologous and connect_type = 0*/
      {
	fanr0 = fanr[0];
	fanc0 = fanr[0];
	base0 = base[0];
	scale0 = scale[0];
      }
    else /*nohomologous and connect_type = 0 */
      {
	fanr0 = fanr[1];
	fanc0 = fanr[1];
	base0 = base[1];
	scale0 = scale[1];
      }

    if(connect_type == 1) /*ex to in */
      {
	base0 /=4.0;
	scale0 /= 4.0;
      }
    if (connect_type == 2) /*inhibitory to excitatory*/
      {
	base0 /= -4.0;
	scale0 /= -4.0;
      }
    if (connect_type == 3) /*inhibitory to inhibitory*/
      {
	base0 /= -6.0;
	scale0 /= -6.0;
      }

    if(seed != 0)
      seed ++;
    outfile = fopen(fname,"w");
    
    if(source == "ea1d" || source == "ia1d" || source == "eg1d" || source == "ig1d" || source == "ea1u" || source == "ia1u" || source == "eg1u" || source == "ig1u" || source == "ea2u" || source == "ia2u" || source == "eg2u" || source == "ig2u" || source == "ea2c" || source == "ia2c" || source == "eg2c" || source == "ig2c" || source == "ea2d" || source == "ia2d" || source == "eg2d" || source == "ig2d")
      {
	Ix = 1;
	Iy = 81;
      }
    else
      {
	Ix = 9;
	Iy = 9;
      }

    if(destination == "ea1d" || destination == "ia1d" || destination == "eg1d" || destination == "ig1d" || destination == "ea1u" || destination == "ia1u" || destination == "eg1u" || destination == "ig1u" || destination == "ea2u" || destination == "ia2u" || destination == "eg2u" || destination == "ig2u" || destination == "ea2c" || destination == "ia2c" || destination == "eg2c" || destination == "ig2c" || destination == "ea2d" || destination == "ia2d" || destination == "eg2d" || destination == "ig2d")
      {
	Ox = 1;
	Oy = 81;
	fanr0 = 1;
      }
    else
      {
	Ox = 9;
	Oy = 9;
      }

    fprintf(outfile,"%s %s SV I(%d %d) O(%d %d) F(%d %d) %d %g Offset: 0 0\n",
                     source,destination,Ix,Iy,Ox,Oy,fanr0,fanc0,seed,perc);
    for(i = 0; i < fanr0; i++)
      {
	for(j = 0; j < fanc0; j++)
	  fprintf(outfile,"%10.6f:%10.6f ",base0,scale0);
	fprintf(outfile,"\n");
      }
    fclose(outfile);
  }
