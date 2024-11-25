# Use a lightweight Node.js image
FROM node:18-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies in a separate layer for caching
RUN npm install --legacy-peer-deps

# Copy the rest of the application files
COPY . .

# Expose the application port (replace 3000 if using a different port)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
