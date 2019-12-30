# from base image node
FROM node:8.11-slim
# FROM alpine:3.10

# copying all the files from your file system to container file system
COPY . /todolist
WORKDIR /todolist

# install all dependencies
RUN npm install

#expose the port
EXPOSE 3000

# command to run when intantiate an image
CMD ["npm","start"]