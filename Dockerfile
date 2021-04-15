FROM amazon/aws-cli:latest

ADD update_service.sh /bin/

RUN chmod +x /bin/update_service.sh

ENTRYPOINT [ "/bin/update_service.sh" ]