PROJECT=

if [ -z "$PROJECT" ]
then
    read -p "Enter the project id to deploy: " PROJECT
fi

gcloud functions deploy hello-world \
    --project $PROJECT \
    --runtime java11 \
    --trigger-http \
    --region asia-northeast1 \
    --allow-unauthenticated
