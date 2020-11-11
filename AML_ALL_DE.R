library(limma)
library(data.table)
# csv containing only the numerical features (i.e gene expression data)
aml_all_de <- read.csv("aml_all_numerical_features.csv")

# extract gene names to use them after matrix is transposed
gene_names = colnames(aml_all_de)
aml_all_de <- as.data.frame(aml_all_de)

# transpose the matrix so that genes are rows and samples - columns
aml_all_de <- transpose(aml_all_de)
rownames(aml_all_de) <- gene_names

# extract only the data from the train samples
aml_all_de <- aml_all_de[,1:38]

# extract only the labels for the train samples
sample_data <-as.data.frame(read.csv("actual.csv"))[1:38,]
design <- model.matrix(~sample_data$cancer) # describe model to be fit

# fit linear models and find top 10 DE genes
fit <- lmFit(aml_all_de, design)  # fit each probeset to model
efit <- eBayes(fit)        # empirical Bayes adjustment
topTable(efit, coef=2)      # table of differentially expressed probesets

# Top 10 DE genes in train dataset
de_genes = c("U50136_rna1_at", "X95735_at", "M55150_at", "M16038_at", "Y12670_at", "M23197_at", "X17042_at", "U82759_at", "D49950_at", "M84526_at")
