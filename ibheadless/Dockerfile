# To build docker image:
# docker build -t ibgw .

# Run with:
FROM ibizaman/docker-ibcontroller

# After ibgw starts once and stops, it creates a dir like /var/run/ibcontroller/tws/conf/dxxxxx.   Copy ibgw.xml there.
COPY ibg.xml /ibg.xml
COPY start.sh /start.sh
RUN chmod a+x /start.sh

RUN curl -O https://download2.interactivebrokers.com/installers/ibgateway/latest-standalone/ibgateway-latest-standalone-linux-x64.sh
RUN chmod a+x ibgateway-latest-standalone-linux-x64.sh
RUN yes n | ./ibgateway-latest-standalone-linux-x64.sh

EXPOSE 4003

CMD ["/start.sh"]
