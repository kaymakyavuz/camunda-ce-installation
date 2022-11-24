# Camunda CE Installation

This playbook currently installs Camunda CE with Tomcat.

### How to execute

1. Add your server data to inventory file [here](inventory.yml)

2. Pass the values in vars [here](./vars/main.yml) The db password will be prompted.

3. Run the script 

```
cd ansible && ansible-playbook -i inventory.yml camunda.yml
```
## Parameters

install_java: If you don't want to use the default jdk in the server, you have the option to install java-15 from Azul. By defult it is set to false.

force_install: the playbook looks if start-camunda.sh exists in /var/opt/camunda. If the file exists Camunda will not be installed. If you want to install it anyway set force_install to true.

## Database Configuration

By default, Camunda will ship schema migrations under /var/opt/camunda/sql/create

## Tomcat Configuration
TLS should be configured [server.xml](./roles/camunda-installation/templates/server.xml)
