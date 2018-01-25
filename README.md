# alfresco-keycloak-deployment
[![Join the chat at https://gitter.im/Activiti/Activiti7](https://badges.gitter.im/Activiti/Activiti7.svg)](https://gitter.im/Activiti/Activiti7?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

<p>
  <a href='https://github.com/Activiti/activiti-cloud-sso-idm/blob/master/LICENSE.txt'>
       <img src='https://img.shields.io/hexpm/l/plug.svg' alt='license' />
  </a>
  <a href="https://cla-assistant.io/Activiti/activiti-cloud-sso-idm"><img src="https://cla-assistant.io/readme/badge/Activiti/activiti-cloud-sso-idm" alt="CLA assistant" /></a>
</p>

Keycloak docker image used for Activiti tests and demos as a reference sso/idm implementation.

The dockerfile imports a realm named springboot from the json file so that the built image is configured with these realm settings.

A portOffset is also applied in the startup so that keycloak runs on port 8180 to avoid conflicts on 8080.

The configuration includes:

admin user for the springboot realm with password admin
testuser in group users with password password
hruser in group users and group hrusers and password password
client user for using admin client with password client

To start a container use docker run -p 8180:8180 alfresco/alfresco-keycloak