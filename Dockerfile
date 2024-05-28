# Choose the latest Node.js as base image
FROM node:20-alpine AS base

# Set the working directory in the Docker container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies in the Docker container
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Expose the port 9000 for the app
EXPOSE 9000

# Start the app
CMD [ "npm", "start" ]