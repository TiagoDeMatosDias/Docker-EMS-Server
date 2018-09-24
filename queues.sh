#!/bin/sh
create queue Queue_A
create topic Topic_A

create bridge source=topic:Topic_A target=queue:Queue_A

setprop factory TopicConnectionFactory url=tcp://localhost:7222
setprop factory QueueConnectionFactory url=tcp://localhost:7222
