
https://google.qwiklabs.com/focuses/563?parent=catalog#

Need to work with Team

gcloud config list project
gcloud auth list

content_copy

content_copy

gcloud config get-value compute/zone
gcloud config get-value compute/region
export PROJECT_ID='primal-turbine-320313'

gcloud compute project-info describe --project 'primal-turbine-320313'
content_copy

export ZONE='asia-southeast1-a'

content_copy
gcloud compute project-info describe 

echo $PROJECT_ID
echo $ZONE

gcloud compute instances create gcelab2 --machine-type n1-standard-2 --zone $ZONE
gcloud compute instances stop instance-1-2 --project projectname --zone asia-southeast1-a

content_copy


gcloud compute instances create --help

content_copy

gcloud -h

content_copy
gcloud config --help

