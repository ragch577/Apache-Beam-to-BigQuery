python beam-pipeline.py \
	--project=toronto-ridership \
	--region=europe-north1 \
	--runner=DataflowRunner \
	--staging_location=gs://roadtrip-toronto-01/test \
	--temp_location gs://roadtrip-toronto-01/test \
	--input gs://roadtrip-toronto-01/*.csv
--save_main_session=true
