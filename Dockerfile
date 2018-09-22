# Start from base
FROM centos
MAINTAINER https://github.com/TiagoDeMatosDias

# Install

#Copying relevant files/folders into the container
COPY /EMS/ /home/
COPY Startup.sh /home/
COPY queues.sh /home/

#Exposes ports on which the EMS server will be running
EXPOSE 7222


#Adding users, making directories, setting required permissions in order to install the EMS server
RUN ["useradd", "tibco"]
RUN ["mkdir", "-p", "/opt/tibco"]
RUN ["chown", "tibco:tibco", "/opt/tibco"]
RUN ["chmod", "775", "/opt/tibco"]
RUN ["chmod", "777", "/home/Startup.sh"]
RUN ["chmod", "777", "/home/queues.sh"]
WORKDIR /home/

#Installs the EMS server using the settings from the silent file
RUN ["./TIBCOUniversalInstaller-lnx-x86-64.bin", "-silent"]

#Sets required post-install permissions for the EMS server
RUN ["chmod", "-R", "777", "/home/user/tibco/tibco/cfgmgmt/ems"]

#Starts the EMS server itself
ENTRYPOINT ["/home/Startup.sh"]
