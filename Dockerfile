FROM node:12-alpine
 RUN apk add --no-cache python=2.7.18-r0 g++=9.3.0-r0 make=4.2.1-r2 &&\
    apk update

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