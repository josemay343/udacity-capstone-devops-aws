FROM node:12-alpine
 RUN apk add --no-cache python g++ make

# Create a working directory
 WORKDIR /app

 # Copy source code to working directory
 COPY . .

# Install dependencies
 RUN yarn install --production

 # Run app.py at container launch
 CMD ["node", "src/index.js"]