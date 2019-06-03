FROM ubuntu
ADD run.sh /
RUN apt-get update && apt-get install -y busybox curl
RUN chmod +x run.sh
CMD /run.sh