%% Author: Florian Le Roux %%

syms wcav wex O0 neff
syms OR D

OR = O0*(wex/wcav)^(1/2)
D = OR^2/(4*wex)

M = [wcav+2*D -j*OR/2 -2*D -j*OR/2;
    j*OR/2 wex -j*OR/2 0; 
	2*D -j*OR/2 -wcav-2*D -j*OR/2; 
	-j*OR/2 0 j*OR/2 -wex]
	
eig(M)