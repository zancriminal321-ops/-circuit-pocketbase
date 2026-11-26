FROM ghcr.io/pocketbase/pocketbase:latest
# PocketBase for CIRCUIT SPORTS - Render Free
# Data will be in /pb/pb_data (Render Disk)
EXPOSE 8090
CMD ["serve", "--http=0.0.0.0:8090", "--dir=/pb/pb_data", "--publicDir=/pb/pb_public"]
