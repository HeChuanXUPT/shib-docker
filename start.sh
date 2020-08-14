#! /bin/bash

# change onwer
chown shib.shib /opt/shib -R
su - shib -c "cd /opt/shib && npm start"

# start program
#cd /opt/shib && npm start
