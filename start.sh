#! /bin/bash

chown shib.shib /opt/shib -R
su - shib -c "cd /opt/shib && npm start"
