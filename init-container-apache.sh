#!/bin/bash
#inicializa um container c/ apache
#através da porta: 80


###### VARIÁVEIS #####################
WEB_DIR_FILES='/var/www/'
CONTAINER_NAME='apache2-prod'
DOCKER_REPO_IMG_TAG='fredericomartini/apache:2.4-prod'  #ex: fredericomartini/apache:2.0
LOCAL_PORT=80
#####################################

/usr/bin/docker stop $CONTAINER_NAME
/usr/bin/docker rm $CONTAINER_NAME
/usr/bin/docker pull $DOCKER_REPO_IMG_TAG 

docker run -d -p $LOCAL_PORT:80 --name $CONTAINER_NAME -v $WEB_DIR_FILES:/var/www/ $DOCKER_REPO_IMG_TAG /usr/sbin/apache2ctl -D FOREGROUND
