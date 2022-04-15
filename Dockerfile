FROM ubuntu:20.04 as builder
ENV DEBIAN_FRONTEND=noninteractive

# Set up prequisites
RUN apt-get update && apt-get install -y \
    sudo \
    wget \
    software-properties-common 

# Install SQL server
RUN sudo wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
RUN sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2019.list)"

RUN sudo apt-get update
RUN sudo apt-get install -y mssql-server

# Install SQL server full-text-search
RUN sudo apt-get update 
RUN sudo apt-get install -y mssql-server-fts

# Start SQL Server process
CMD /opt/mssql/bin/sqlservr
