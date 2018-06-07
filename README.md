# alfresco-keycloak-deployment
[![Join the chat at https://gitter.im/Activiti/Activiti7](https://badges.gitter.im/Activiti/Activiti7.svg)](https://gitter.im/Activiti/Activiti7?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge) [![ASL 2.0](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/Alfresco/alfresco-keycloak-deployment/blob/master/LICENSE.txt) [![CLA](https://cla-assistant.io/readme/badge/Alfresco/alfresco-keycloak-deployment)](https://cla-assistant.io/Alfresco/alfresco-keycloak-deployment)  [![Docker Build Status](https://img.shields.io/docker/build/alfresco/alfresco-keycloak.svg)](https://hub.docker.com/r/alfresco/alfresco-keycloak/)

Keycloak docker image used for Activiti tests and demos as a reference sso/idm implementation.

The dockerfile imports a realm named activiti from the json file so that the built image is configured with these realm settings.

A portOffset is also applied in the startup so that keycloak runs on port 8180 to avoid conflicts on 8080.

The configuration includes:

admin user for the activiti realm with password admin
testuser in group users with password password
hruser in group users and group hrusers and password password
client user for using admin client with password client

To start a container use docker run -p 8180:8180 alfresco/alfresco-keycloak
