library(sparklyr)
library(dplyr)
source('config.r')
# create the Spark context, for EMR 5.2 use version = "2.0.0", for EMR 4.7/4.8 use version = "1.6.2", and for EMR 4.6 use "1.6.1"
sc <- spark_connect(master = "yarn-client", version = "2.1.0")

#Check status of emr cluster
#aws emr describe-cluster --cluster-id j-1BD6D2VCR6ZXB --region ap-southeast-2

Sys.setenv(AWS_ACCESS_KEY_ID=aws_access_key_id)
Sys.setenv(AWS_SECRET_ACCESS_KEY=aws_secret_access_key)

