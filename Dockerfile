FROM jboss/keycloak:4.2.1.Final
MAINTAINER https://gitter.im/Alfresco/platform-services

RUN /opt/jboss/keycloak/bin/add-user.sh -u admin -p admin
RUN /opt/jboss/keycloak/bin/add-user-keycloak.sh -r master -u admin -p admin
 
ADD activiti-realm.json /opt/jboss/keycloak/

ENTRYPOINT [ "/opt/jboss/docker-entrypoint.sh" ]

ENV PORT_OFFSET 100

EXPOSE 8180 30081

CMD ["-b", "0.0.0.0", "-Dkeycloak.import=/opt/jboss/keycloak/activiti-realm.json -Djboss.socket.binding.port-offset=${env.PORT_OFFSET}"]
