#!/bin/sh


create queue queue
create queue queue1

create topic topic

create bridge source=topic:topic target=queue:queue1

setprop factory TopicConnectionFactory url=tcp://localhost:7222
setprop factory QueueConnectionFactory url=tcp://localhost:7222
