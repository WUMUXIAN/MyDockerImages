#aerogear-unifiedpush
**An AeroGear UnifiedPush Server for Push Notifications to Mobile Devices**

* Build the image
```
docker build -t yourimagename:yourtag .
```
* Set your environment variables to run the server, you two databases running for it
```
Open env_vars and configure these:
UNIFIEDPUSH_PORT_3306_TCP_ADDR=xxx
UNIFIEDPUSH_PORT_3306_TCP_PORT=xxx
UNIFIEDPUSH_ENV_MYSQL_DATABASE=xxx
UNIFIEDPUSH_ENV_MYSQL_USER=xxx
UNIFIEDPUSH_ENV_MYSQL_PASSWORD=xxx
KEYCLOAK_PORT_3306_TCP_ADDR=xxx
KEYCLOAK_PORT_3306_TCP_PORT=xxx
KEYCLOAK_ENV_MYSQL_DATABASE=xxx
KEYCLOAK_ENV_MYSQL_USER=xxx
KEYCLOAK_ENV_MYSQL_PASSWORD=xxx
```

* Run the server
Update the image accordingly in run_server.sh script and run
```
./run_server.sh
```


