clc
clear all

n_protein = 951;
spoints = [1, 0; 1, -1; 0, -1; -1, -1; -1, 0; -1, 1; 0, 1; 1, 1];

fileFolder=fullfile('E:\Postdoctoral_Research\00-DNA_BINDING_PROTEINS\00_MyResearch\2023-AVP\pssm_AVP_train\pssm');
dirOutput=dir(fullfile(fileFolder,'*.txt'));
PSSM_XXXX={dirOutput.name}';
PSSM_XXXX = natsortfiles(PSSM_XXXX);
fileNames_PSSM = [];
for i=1:951
	path_way = [fileFolder '\' cell2mat(PSSM_XXXX(i))];
	lujing=cellstr(path_way);
	fileNames_PSSM = [fileNames_PSSM;lujing];
end


%%%%%%%%%%% Features extraction from PSSM %%%%%%%%%%%%%%%% 

for i=1:n_protein
	files_name = cell2mat(fileNames_PSSM(i));

	PSSM_Matrix = Read_Text_files_PSSM(files_name);
    
    %%%%%%%%%%% LBP-PSSM %%%%%%%%%%%%%%%%
    %% Please Use the LBP-PSSM code here
    
    %%%%%%%%%%%% PsePSSM %%%%%%%%%%%%%%%%
    FPseudo = PseudoPSSM(PSSM_Matrix, 5);
    feature_PsePSSM_951(i,:)=FPseudo(:);

end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

save feature_LBP_PSSM_951 feature_LBP_PSSM_951;
save feature_PsePSSM_951 feature_PsePSSM_951;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
%      csvwrite('feature_LBP_PSSM_951.csv',feature_LBP_PSSM_951);
%      csvwrite('feature_PsePSSM_951.csv',feature_PsePSSM_951);
  
