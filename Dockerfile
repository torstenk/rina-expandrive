#FROM gcr.io/distroless/java17
FROM ubuntu:latest

USER root
# TODO change to match the path to your "fat jar"
COPY exfs_2021.7.2_amd64.deb /app
WORKDIR /app
sudo apt-get update
sudo apt install ./exfs_7.5.2_amd64.deb
sudo apt-get install apt-transport-https
sudo apt-get install exfs

USER nonroot

CMD ["bash"]
