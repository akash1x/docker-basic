# Tells which image to pull
FROM node:latest 

# Copy everything except .dockerignore and paste to /home/app
COPY . /home/app

# Make /home/app the working directory
WORKDIR /home/app

# Install dependencies
RUN npm install

#Expose docker 9000 to outside machine
EXPOSE 9000

#Run the entry file
CMD [ "node","index" ]