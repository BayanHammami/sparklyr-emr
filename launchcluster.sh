aws emr create-cluster --applications Name=Hadoop Name=Spark Name=Hive Name=Pig Name=Tez Name=Ganglia --release-label emr-5.8.0 --name "EMR 5.8 RStudio + sparklyr" --service-role EMR_DefaultRole --instance-groups InstanceGroupType=MASTER,InstanceCount=1,InstanceType=m4.large InstanceGroupType=CORE,InstanceCount=3,InstanceType=m4.large --bootstrap-action Path=s3://aws-bigdata-blog/artifacts/aws-blog-emr-rstudio-sparklyr/rstudio_sparklyr_emr5.sh,Args=["--rstudio","--shiny","--sparkr","--rexamples","--plyrmr","--rhdfs","--sparklyr"],Name="Install RStudio" --ec2-attributes InstanceProfile=EMR_EC2_DefaultRole,KeyName=bayan.pem --configurations '[{"Classification":"spark","Properties":{"maximizeResourceAllocation":"true"}}]' --region ap-southeast-2
