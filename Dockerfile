FROM node:12-alpine
 RUN apk update && add --no-cache python g++ make

# Create a working directory
 WORKDIR /app

 # Copy source code to working directory
 COPY . .

# Install dependencies
 RUN yarn install --production &&\
    yarn cache clean

# Expose port 
EXPOSE 3000
 # Run app.py at container launch
 CMD ["node", "src/index.js"]