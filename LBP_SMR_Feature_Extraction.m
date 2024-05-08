clc
clear all
load('energy_20.mat');

feature_train=[];


[data, sequence] = fastaread('antiviral_dataset.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    P=SMR(SEQ,energy_20);
	P=P';
   %% Use the LBP-SMR code here
    features(i,:)=FF;
end

%%%%%%%%%%%%%%%%%%%%%%%% SAVE FILES %%%%%%%%%%%%%%%%%%%%%%%%%

feature_LBP_SMR_951=[features];
save feature_LBP_SMR_951 feature_LBP_SMR_951;

%%%% To Create CSV sheet for the data %%%%%%%%%
   
%      csvwrite('feature_LBP_SMR_951.csv',feature_LBP_SMR_951);


