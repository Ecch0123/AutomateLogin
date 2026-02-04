# Use official Playwright Docker image with all browsers pre-installed
FROM mcr.microsoft.com/playwright:focal

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first for caching
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the rest of your project
COPY . .

# Expose port if your app uses one (optional)
# EXPOSE 3000

# Set default command to run your scheduler
CMD ["node", "autoScheduler.js"]
