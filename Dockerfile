# Step 1: Use Node base image
FROM node:18

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy remaining files
COPY . .

# Step 5: Expose the port and start app
EXPOSE 3000
CMD ["node", "server.js"]
