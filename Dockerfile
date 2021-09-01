FROM node:13-alpine

# Create a folder on the container
RUN mkdir -p /home/app

#Copy folder app on host machine into home/app inside the component
COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

