FROM node:9
WORKDIR /app
#COPY ./js /app
RUN npm install --global nodemon
#This works without this file existing when building image
CMD ["nodemon", "myfirst.js"]
EXPOSE 8081
CMD ["nodemon", "-L", "/app"]


# use cached layer for node modules
#ADD package.json /tmp/package.json
#RUN cd /tmp && npm install
#RUN mkdir -p /usr/src && cp -a /tmp/node_modules /usr/src/

# add project files
#WORKDIR /usr/src
#ADD . /usr/src


#Start docker with this command
#OSX
#docker run -d -it --name fu --mount type=bind,source="$(pwd)"/js,destination=/app,consistency=cached fuckyou:clean
