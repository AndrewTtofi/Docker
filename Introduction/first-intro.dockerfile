#FROM represents the image that will be used from docker and installed to our machine. The information give is:
#node represents the type of the image we are going to use
#12.16.3 represents the version of the image we are going to use
FROM node:12.16.3   

#WORKDIR represents a directory will be the the working directory in our case /code
WORKDIR /code

#ENV represents all the variables that are going to be used by our environment
ENV PORT 80

#COPY represents what we are going to use in our env, such as dependecies
#In this case we copy package.json that has modules used by our node that are required for our application
COPY package.json /code/package.json

#RUN command represents terminal commands that are going to be executed by docker
RUN npm install

#COPY everything from our working directory to the code directory
COPY . /code/

#CMD represents the commands that are going to be executed once the image is run.
CMD ["node", "src/server.js"]

