FROM fedora:22

RUN dnf upgrade -y -q && dnf clean all
RUN dnf install -y -q nginx && dnf clean all

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD /usr/sbin/nginx -c /etc/nginx/nginx.conf
