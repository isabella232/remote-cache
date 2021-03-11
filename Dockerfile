FROM alpine:3.13.1

LABEL maintainer="Tonye Jack <jtonye@ymail.com>"

RUN apk add bash

COPY main.sh /main.sh
RUN chmod +x /main.sh

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

ENTRYPOINT ["/main.sh"]
