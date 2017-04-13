#!/bin/bash

# Usage:
#   ./display.sh
#   ./display.sh -o yaml

: ${APP_NAME:=fluentd-cloudwatch}
: ${NAMESPACE:=kube-system}
: ${KUBECTL:=kubectl}

$KUBECTL get secret,configmap,daemonset,pod --selector=app=$APP_NAME --namespace=$NAMESPACE $@
