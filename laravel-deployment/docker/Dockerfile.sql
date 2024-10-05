# Use the official image as a parent image
FROM mysql/mysql-server

# Set the working directory in the container
WORKDIR /docker-entrypoint-initdb.d

# Copy the rest of your app's source code from your host to your image filesystem.
# COPY . .

# Configure MYSQL
ENV MYSQL_ROOT_PASSWORD=1ncrease
ENV MYSQL_DATABASE=myDb
ENV MYSQL_USER=incrisz
ENV MYSQL_PASSWORD=1ncrease


CMD ["mysqld"]
