# Use official Node.js image as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies required for building TypeScript
RUN apk add --no-cache bash

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Install TypeScript globally
RUN npm install -g typescript

# Install GraphQL dependencies and any other required modules for your project
# Add them to package.json before running `npm install` or include them here as necessary
RUN npm install graphql express apollo-server

# Build the TypeScript code
RUN tsc

# Expose the port that the GraphQL server will be running on
EXPOSE 4000

# Set the command to run the application
CMD ["npm", "start"]