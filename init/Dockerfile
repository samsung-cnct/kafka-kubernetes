FROM wurstmeister/kafka

MAINTAINER samsung_cnct 

ADD start-kafka-petset.sh /usr/bin/start-kafka-petset.sh

# Use "exec" form so that it runs as PID 1 (useful for graceful shutdown)
CMD ["start-kafka-petset.sh"]