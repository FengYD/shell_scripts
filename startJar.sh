#! /bin/bash
pkg_name=application.jar
config_path=/opt/application/application.yml
echo "nohup java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=18888 -jar $pkg_name --spring.config.location=$config_path &"
nohup java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=18888  -jar $pkg_name --spring.config.location=$config_path > ./nohup.out &