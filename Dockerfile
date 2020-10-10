# specify a base image; compact alpine version
FROM node:alpine

# specify working directory in container
WORKDIR /user/app

# copy package.json to container first
COPY ./package.json .

# install dependencies
RUN npm install

# copy current directory to container; skip installing dependency if only code changes
COPY . .

# default command
CMD [ "npm", "start" ]