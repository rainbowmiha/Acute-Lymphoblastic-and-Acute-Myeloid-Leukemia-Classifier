# Acute-Lymphoblastic-and-Acute-Myeloid-Leukemia-Classifier
The purpose of this project was to train a model to classify samples of Acute Lymphoblastic and Acute Myeloid Leukemia, using the microarray gene expression data from the Golub et al (1999) study. This repo contains the Jupyter notebook of the project, the train and test sets, as well as an extra R file used for finding the top 10 differentially expressed genes, which were used in feature selection.

File Description:

**ALL_AML_Classification.ipynb** - project notebook\
\
**AML_ALL_DE.R** - R file used for finding differentially expressed genes in the train set\
\
**aml_all_numerical_features.csv** - gene expression data of both train and test set (only train set DE data should be used for finding DE genes!), this is to be used for the R file above.\
\
**actual.csv** - labels of all samples\
\
**data_set_ALL_AML_independent.csv** - test set\
\
**data_set_ALL_AML_train.csv** - train set\

