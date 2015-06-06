FROM nginx:latest

ENTRYPOINT ["/bin/start.sh"]
EXPOSE 80
RUN mkdir /templates
ADD services.ctmpl /templates/

ADD start.sh /bin/start.sh

ADD https://github.com/hashicorp/consul-template/releases/download/v0.9.0/consul-template_0.9.0_linux_amd64.tar.gz /usr/bin/
RUN tar -C /usr/local/bin --strip-components 1 -zxf /usr/bin/consul-template_0.9.0_linux_amd64.tar.gz

