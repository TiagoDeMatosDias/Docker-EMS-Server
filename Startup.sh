#!/bin/sh
cd /opt/tibco/ems/8.4/bin/
./tibemsd64 -config /home/user/tibco/tibco/cfgmgmt/ems/data/tibemsd.conf&
./tibemsadmin64 -server "tcp://localhost:7222" -user admin -password "" -script /home/queues.sh&
top
