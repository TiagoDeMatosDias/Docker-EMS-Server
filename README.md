# Docker EMS Server

A quick and easy way to get a TIBCO EMS Server up and running inside a Docker container. Great for development work!

## Requirements:

1 - A valid license for TIBCO EMS, you may acquire it from TIBCO directly.

2 - Docker installed on a Unix based system (or the ability to run bash scripts on a windows based system that has docker installed)


## Step by step:

1 - Download the latest commit for this project onto the machine and location you wish to run it.

2 - Go to [TIBCO eDelivery](https://edelivery.tibco.com) and Download your preferred version of EMS. This project was designed for version 8.4, but should work out of the box for all other versions.

3 - Paste the EMS folder you downloaded from TIBCO inside the project folder. Skip the silent file, and use the file provided by this GitHub project.

4 - Run the build.sh file

The container is now running as normal. You may stop it at anytime by using the standard docker stop command.


## Running the server:

If the container stops for any reason after it has been built, you don't need to build it again. Simply run the run.sh file whenever you need the server to come online.

The container is now running as normal. You may stop it at anytime by using the standard docker stop command.



## Default Server Configurations:

You may configure the server to start with a number of predefined queues, topics, bridges, etc... Thereby avoiding the need to recreate those queues whenever the container is stopped.

To do so, simply edit the queues.sh file using standard TIBCO EMS scripts. You may see some examples in the current version of this project.

Please be aware you will need to stop the container and run the build.sh file for these changes to take effect.
