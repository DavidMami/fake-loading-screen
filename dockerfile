# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application files to the container
COPY . .

# Expose the port on which your application listens
EXPOSE 3000

# Set the command to run your application
CMD [ "npm", "start" ]
