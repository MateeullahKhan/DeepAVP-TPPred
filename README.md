# DeepAVP-TPPred
The code is the implementation of our method described in the paper “ Matee Ullah, Shahid Akbar, XXX, Quan Zou DeepAVP-TPPred: identification of antiviral peptides using transformed image-based localized descriptors and binary tree growth algorithm”.
## (I) 1_FeatureExtractionCode
### (1)	data
There are three datasets:
#### (i)	Train dataset
The benchmark training dataset "antiviral_dataset.txt", which contains 544 positive and 407 negative peptides samples.
#### (ii)	Independent datasets
The first independent dataset "AVP_Independent_1.txt" contains a total of 105 peptide sequences (60 postive and 45 negative samples). <br />
The second independent dataset "AVP_Independent_2.txt" contains a total of 111 peptide sequences (51 postive and 60 negative non-AVPs samples). <br />
### (2)	lib
lib folder contains all the features extraction related necessary codes used in this study.<br />
## (II)	2_FeatureSelectionCode
2_FeatureSelectionCode folder includes the following files
### (1)	BinaryTreeGrowthAlgorithmforFeatureSelection
BinaryTreeGrowthAlgorithmforFeatureSelection folder contains all required files related to Binary Tree Growth Algorithm.
## (III)	3_ClassificationCode
3_ClassificationCode folder includes all the libraries for DNN classifier framework.
## (IV)	PSSM_based_Feature_Extraction.m
PSSM_based_Feature_Extraction.m is the matlab file for extracting <br />
(1) 	LBP-PSSM (Local Binary Pattern-Position Specific Scoreing Matrix)
(2)	PSePSSM (Pseudo-Position Specific Scoreing Matrix) <br />
## (V) LBP_SMR_Feature_Extraction.m 
LBP_SMR_Feature_Extraction.m is the matlab File for extracting <br /> 
(1)	LBP-SMR (Local Binary Pattern-Substitution matrix representation) <br />

## (VI)	Contact
If you are interested in our work or if you have any suggestions and questions about our research work, please contact us. E-mail: khan_bcs2010@hotmail.com.
