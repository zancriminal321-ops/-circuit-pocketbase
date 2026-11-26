FROM alpine:latest
# CIRCUIT SPORTS - PocketBase on Render Free (GHCR chara, direct download)
RUN apk add --no-cache unzip ca-certificates
# PocketBase binary direct GitHub theke namabo - GHCR lagbe na
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.23.0/pocketbase_0.23.0_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/ && rm /tmp/pb.zip && chmod +x /pb/pocketbase
EXPOSE 8090
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8090", "--dir=/pb/pb_data", "--publicDir=/pb/pb_public"]
