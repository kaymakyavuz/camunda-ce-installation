#!/bin/sh


export CATALINA_HOME="$(dirname "$0")/server/apache-tomcat-{{tomcat_version}}"


/bin/sh "$(dirname "$0")/server/apache-tomcat-{{tomcat_version}}/bin/startup.sh"
