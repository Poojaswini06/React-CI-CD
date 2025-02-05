# Use an official Node.js image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the port and start the app
EXPOSE 3000
CMD ["npm", "start"]
