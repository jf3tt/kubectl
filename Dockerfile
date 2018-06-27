FROM alpine:latest
RUN apk add curl --update && rm -rf /var/cache/apk/*
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && mv kubectl /usr/local/bin/ && chmod +x /usr/local/bin/kubectl
ENTRYPOINT ["kubectl"]
