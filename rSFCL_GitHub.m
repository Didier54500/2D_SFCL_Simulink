%% Données limiteur rLCS
% Fichier : Modele_SFCL_Simscape.slx

clc
clear all

Longueur_ruban_sain = 10 ; % Longueur de la partie saine du ruban
Nombre_module_sain = 1 ; %64+16 ; %(64 à JC + 16 à 0.55.Jc);
Longeur_module = Longueur_ruban_sain / Nombre_module_sain 
 
Longueur_ruban_defaut = 0.001;
Nombre_module_defaut = 1 ;
Longueur_module_defaut = Longueur_ruban_defaut/Nombre_module_defaut % Longeur_module

Largeur_ruban = 4e-3;

%% Résistance d'inferace YBCO - Argent
Rho_interface = 1e-4;%1e-4 ; % (Ohms.m) % RinterBase dans EMTP CHB
Surface_sain = Longeur_module * Largeur_ruban ;  % en m2
Surface_def = Longueur_module_defaut * Largeur_ruban ;  % en m2
Epaisseur_R_int = 0.1e-6 ; % Epaisseur couche résistance interface en m . % H_interface pour CHB
Res_inter_sain = Rho_interface * Epaisseur_R_int / Surface_sain  % Omhs => R = rho*L/S
Res_inter_def = Rho_interface * Epaisseur_R_int / Surface_def  % Omhs => R = rho*L/S
% Pour info 
Res_interface = Rho_interface * Epaisseur_R_int *10^10 % en microOhm.cm2
% 1 Ohm.m2 = 10^4*10^6 microOhm.cm2

Rag = 1e-20 ;
RY = 1e-20;
RH = 1e-20;

%%
Ep_YBCO = 1e-6 ;
Nbr_module_Ep_YBCO = 1 ;
Ep_module_YBCO = Ep_YBCO / Nbr_module_Ep_YBCO 

MV_YBCO = 6410 ;
Cond_thermique_YBCO = 8 ;
Critere_champ_Elec = 100e-6 ;
Temp_critique_supra = 90 ;
Temp_azote_liquide = 77 ;
Resisitance_etat_normal = 30e-8 ;
Coefficient_temperature = 0.47e-8 ;
Jc_critique = 2.5e10 ;
n_supra = 15 ;
coefJ = 0.55; % Coef de réduction du Jc critique

%%
Ep_Ag_Haut = 2e-6 ; % Epaisseur couche d'argnet
Nbr_module_Ep_Ag_Haut = 1 ; % Nbr de module modélisé pour l'Ag dans l'epaisseur
Ep_module_Ag_Haut = Ep_Ag_Haut / Nbr_module_Ep_Ag_Haut % Epaissseur de chaque module Ag Haut

%%
Ep_Ag_Bas = 1.8e-6 ;
Nbr_module_Ep_Ag_Bas = 1 ; % Nbr de module modélisé pour l'Ag dans l'epaisseur
Ep_module_Ag_Bas = Ep_Ag_Bas / Nbr_module_Ep_Ag_Bas % Epaissseur de chaque module Ag Bas
MV_argent = 10490 ;

%%
Ep_Hast = 100e-6 ;
Nbr_module_Ep_Hast = 1 ; % Nbr de module modélisé pour l'hast dans l'epaisseur
Ep_module_Hast = Ep_Hast / Nbr_module_Ep_Hast % Epaissseur de chaque module Hast
MV_hast = 8890 ;
