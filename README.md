# Apache-Beam-to-BigQuery
- Open console
- Download the files from the following link

  wget https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/7e876c24-177c-4605-9cef-e50dd74c617f/resource/5f5d78c4-d810-4048-9dac-c18273abffac/download/files-1.zip -O temp.zip
- Unzip the downloaded file

  unzip temp.zip -d 2020
- cd 2020
- ls

  2020–01.csv 2020–02.csv 2020–03.csv 2020–04.csv 2020–05.csv 2020–06.csv 2020–07.csv 2020–08.csv 2020–09.csv 2020–10.csv 2020–11.csv 2020–12.csv
  
 - head -n 1 2020/2020–01.csv

   Trip Id,Trip Duration,Start Station Id,Start Time,Start Station Name,End Station Id,End Time,End Station Name,Bike Id,User Type
   
 -  First, set a project variable with your project ID and set the project property.
    
    export PROJECT=my-project-id
    gcloud config set project $my-project-id
    
-  Create a new bucket within your project by using the make bucket gsutil mbcommand.

   gsutil mb -l US gs://my-bucket-name
   
-  Use the gsutil cpcommand to copy files to the Cloud Storage bucket we just created.

   gsutil cp 2020/* gs://my-bucket-name
   
-  Check if the files have been successfully copied.

   gsutil ls gs://my-bucket-name/
   
## Create a BigQuery dataset

-  Before we can load our data to a BigQuery table, we need to create a BigQuery dataset for the table.

bq --location=US mk mydataset

## ENABLE DATAFLOW API
-  Use the ETL python file to create the data pipelines,
-  Use the sh file to run the data pipeline
-  Look the jobs on dataflow.

