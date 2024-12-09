# Use a Node.js base image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application files
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the application using http-server
CMD ["npx", "http-server", "-p", "8080"]
