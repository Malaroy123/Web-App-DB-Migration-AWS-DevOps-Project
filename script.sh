#!/bin/bash

S3_URI=s3://your-name-sql-files/V1__shopwise.sql
RDS_ENDPOINT=dev-rds-db.cqdxcpjsxjhd.eu-west-1.rds.amazonaws.com
RDS_DB_NAME=applicationdb
RDS_DB_USERNAME=admin
RDS_DB_PASSWORD=1234567890

# Update all packages
sudo yum update -y

# Download and extract Flyway. Ensure you check for the latest version
sudo wget -qO- https://download.red-gate.com/maven/release/com/redgate/flyway/flyway-commandline/11.3.1/flyway-commandline-11.3.1-linux-x64.tar.gz | tar -xvz 

# Create a symbolic link to make Flyway accessible globally
sudo ln -s $(pwd)/flyway-10.9.1/flyway /usr/local/bin

# Create the SQL directory for migrations
sudo mkdir sql

# Download the migration SQL script from AWS S3
sudo aws s3 cp "$S3_URI" sql/

# Run Flyway migration
flyway -url=jdbc:mysql://"$RDS_ENDPOINT":3306/"$RDS_DB_NAME" \
  -user="$RDS_DB_USERNAME" \
  -password="$RDS_DB_PASSWORD" \
  -locations=filesystem:sql \
  migrate
