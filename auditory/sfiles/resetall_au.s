% Reset all units  to low Activation
%
% Modified by B. Warner
% 07/07/03

	
%---------------------------------------------------
% Turn OFF MGN
%---------------------------------------------------
set (MGNs, 81)          % Turn OFF MGN, the Input
{
  Node Activation {ALL 0.00 }
}

%---------------------------------------------------
% Reset Ai
%---------------------------------------------------
Set(EA1u,81) {
 Node Activation { ALL 0.00 }
}
Set(EA1d,81) {
 Node Activation { ALL 0.00 }
}

Set(IA1u,81) {
 Node Activation { ALL 0.00 }
}
Set(IA1d,81) {
 Node Activation { ALL 0.00 }
}

%---------------------------------------------------
% Reset Aii
%---------------------------------------------------
Set(EA2u,81) {
 Node Activation { ALL 0.0 }
}
Set(EA2d,81) {
 Node Activation { ALL 0.0 }
}
Set(EA2c,81) {
 Node Activation { ALL 0.0 }
}
Set(IA2u,81) {
 Node Activation { ALL 0.0 }
}
Set(IA2d,81) {
 Node Activation { ALL 0.0 }
}
Set(IA2c,81) {
 Node Activation { ALL 0.0 }
}

%---------------------------------------------------
% Reset STG
%---------------------------------------------------
Set(ESTG,81) {
 Node Activation { ALL 0.00 }
}
Set(ISTG,81) {
 Node Activation { ALL 0.00 }
}

%---------------------------------------------------
% Reset PFC
%---------------------------------------------------	
Set(ExFS,81) {
 Node Activation { ALL 0.00}
}
Set(InFS,81) {
 Node Activation { ALL 0.0}
}
Set(EFD1,81) {
 Node Activation { ALL 0.0 }
}
Set(EFD2,81) {
 Node Activation { ALL 0.0 }
}
Set(ExFR,81) {
 Node Activation { ALL 0.00 }
}
Set(IFD1,81) {
 Node Activation { ALL 0.0 }
}
Set(IFD2,81) {
 Node Activation { ALL 0.0 }
}
Set(InFR,81) {
 Node Activation { ALL 0.00 }
}

%---------------------------------------------------
% Reset attention
%---------------------------------------------------	
Set(Atts,1) {
 Node Activation { ALL 0.01}
}

%---------------------------------------------------
% Reset left hemisphere regions
%---------------------------------------------------
Set(GMGN,81) {
 Node Activation { ALL 0.0 }
}

Set(EGD1,81) {
 Node Activation { ALL 0.0 }
}

Set(EGD2,81) {
 Node Activation { ALL 0.0 }
}

Set(EGTG,81) {
 Node Activation { ALL 0.0 }
}





