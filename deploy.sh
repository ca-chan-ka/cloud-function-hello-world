PROJECT=

if [ -z "$PROJECT" ]
then
    read -p "Enter the project id to deploy: " PROJECT
fi

gcloud functions deploy hello-world \
    --project $PROJECT \
    --entry-point application.Main \
    --runtime java11 \
    --trigger-http \
    --region asia-northeast1 \
    --allow-unauthenticated
