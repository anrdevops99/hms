#!/bin/bash
echo "Deployment Started"

sh shutdown.sh
if [ $? -eq 0 ] 
then 
    echo "Tomcat Server shutdown"
fi 

mkdir ../backup
if [ $? -eq 0 ] 
then 
    echo "Tomcat Server shutdown"
fi 

cp hms.war ../backup
if [ $? -eq 0 ] 
then 
    echo "backup the deployment successfully"
fi 

cp target/hms/hms.war
if [ $? -eq 0 ] 
then 
    echo "deployed binary file"
fi 

sh startup.sh
if [ $? -eq 0 ] 
then 
    echo "Tomcat Server started"
fi 

echo "Deployment has been completed successfully"
