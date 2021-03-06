%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotauditory.m
%
% written by:  B. Warner
% 07/07/03
%
% for use with AUDITORY model
%
% loads right hemisphere *.out files
% in current directory and plots them
%
% figure (1): Ai and Aii regions
% figure (2): STG and PFC regions
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load ea1d.out
load ea1u.out
load ea2d.out
load ea2u.out
load ea2c.out
load efd1.out
load efd2.out
load estg.out
load exfr.out
load exfs.out

ymax = 1;
xmax = length(ea1d);

figure(1)
subplot(5,1,1),plot(ea1u),title('Ai_u')
axis([0 xmax 0 ymax])
subplot(5,1,2),plot(ea1d),title('Ai_d')
axis([0 xmax 0 ymax])
subplot(5,1,3),plot(ea2u),title('Aii_u')
axis([0 xmax 0 ymax])
subplot(5,1,4),plot(ea2c),title('Aii_c')
axis([0 xmax 0 ymax])
subplot(5,1,5),plot(ea2d),title('Aii_d')
axis([0 xmax 0 ymax])

figure(2)
subplot(5,1,1),plot(estg),title('STG')
axis([0 xmax 0 ymax])
subplot(5,1,2),plot(exfs),title('FS')
axis([0 xmax 0 ymax])
subplot(5,1,3),plot(efd1),title('D1')
axis([0 xmax 0 ymax])
subplot(5,1,4),plot(efd2),title('D2')
axis([0 xmax 0 ymax])
subplot(5,1,5),plot(exfr),title('FR')
axis([0 xmax 0 ymax])
