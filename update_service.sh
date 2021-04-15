#!/usr/bin/env bash
export AWS_ACCESS_KEY_ID=$PLUGIN_AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$PLUGIN_AWS_SECRET_ACCESS_KEY

aws ecs register-task-definition \
--region $PLUGIN_AWS_REGION \
--family $PLUGIN_BASE_NAME \
--task-role-arn $PLUGIN_TASK_ROLE \
--execution-role-arn $PLUGIN_EXECUTION_ROLE \
--network-mode awsvpc --container-definitions "$PLUGIN_CONTAINER_DEFINITION" \
--requires-compatibilities FARGATE --cpu $PLUGIN_TASK_CPU --memory $PLUGIN_TASK_MEMORY \
--tags key=Product,value=$PLUGIN_PRODUCT_TAG key=Name,value=$PLUGIN_BASE_NAME

if [ $? -eq 0 ];then
	aws ecs update-service \
	--region $PLUGIN_AWS_REGION \
	--cluster $PLUGIN_CLUSTER \
	--service $PLUGIN_SERVICE_NAME \
	--task-definition $PLUGIN_BASE_NAME
else
	exit 1
fi
