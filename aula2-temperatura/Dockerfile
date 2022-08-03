FROM node:16

# set directory to work
WORKDIR /usr/src/app

# build
COPY src/package*.json ./
RUN npm install 

# copy application files
COPY ./src .

# run tests
RUN npm test

# run app
EXPOSE 8080
CMD ["npm", "start"]