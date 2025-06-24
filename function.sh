#!/bin/bash 

USER_ID=$(id -u)


if [ $USER_ID -ne 0 ] ; then
 echo "you are not a root user"
 exit 1 #otherthan 0 , from 1-127 are errors
else
 echo "you are a root user"
fi


# validate functions takes input as exit status, what command they tried to install
 
 CHECK() {
     if [ $1 -eq 0 ] ; then 
      echo "Installing $2...installation is SUCCESS"
     else
      echo "Not installing $2....installation is FAILURE"
     fi
 }

dnf list installed  mysql

   if [ $? -ne 0 ] ; then

    echo "mysql is not insatlled... going to install" 
    dnf install mysql -y
    CHECK $? "Mysql"
   else 
    echo "mysql is already install... nothing to do"
    exit $?
   fi


