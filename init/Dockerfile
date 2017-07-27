FROM wurstmeister/kafka

MAINTAINER samsung_cnct 

ADD start-kafka-statefulset.sh /usr/bin/start-kafka-statefulset.sh

# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka-statefulset.sh"]