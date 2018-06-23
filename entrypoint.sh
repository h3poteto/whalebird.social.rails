#!/bin/bash

export AWS_DEFAULT_REGION=ap-northeast-1
export DB_HOST=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.db_host --region $AWS_DEFAULT_REGION`
export DB_USERNAME=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.db_username --region $AWS_DEFAULT_REGION`
export DB_PASSWORD=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.db_password --region $AWS_DEFAULT_REGION`
export SECRET_KEY_BASE=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.secret_key_base --region $AWS_DEFAULT_REGION`
export SERVER_EMAIL=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.server_email --region $AWS_DEFAULT_REGION`
export SERVER_EMAIL_PASSWORD=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.server_email_password --region $AWS_DEFAULT_REGION`
export WEB_EMAIL=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.web_email --region $AWS_DEFAULT_REGION`
export SLACK_WEBHOOK_URL=`myaws ssm parameter get whalebirdorg.$SERVICE_ENV.slack_webhook_url --region $AWS_DEFAULT_REGION`
export RAILS_SERVE_STATIC_FILES=true
export RAILS_LOG_TO_STDOUT=true
export PORT=3000

exec "$@"
