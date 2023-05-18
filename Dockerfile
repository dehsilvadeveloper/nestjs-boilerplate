FROM node:19.8.1 AS development

# Create the working directory, including the node_modules folder for the sake of assigning ownership in the next command
RUN mkdir -p /usr/src/app/node_modules

# Change ownership of the working directory to the node:node user:group
# This ensures that npm install can be executed successfully with the correct permissions
RUN chown -R node:node /usr/src/app

# Set the user to use when running this image
# Non previlage mode for better security (this user comes with official NodeJS image).
USER node

# Set the default working directory for the app
# It is a best practice to use the /usr/src/app directory
WORKDIR /usr/src/app

# Copy package.json, package-lock.json
# Copying this separately prevents re-running npm install on every code change.
COPY --chown=node:node package*.json ./

# Install dependencies
RUN npm install

# Necessary to run before adding application code to leverage Docker cache
RUN npm cache clean --force

# Bundle app source
COPY --chown=node:node . ./

# Expose API port
EXPOSE 3000
