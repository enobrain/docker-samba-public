FROM alpine

RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add samba

ADD smb.conf /etc/samba/

EXPOSE 139 445
VOLUME ["/Public"]

CMD ["/usr/sbin/smbd", "-F", "-S"]
