# base image
FROM node:12.2.0-alpine

# set working directory
WORKDIR /app

# # add `/app/node_modules/.bin` to $PATH
# ENV PATH /app/node_modules/.bin:$PATH

# # install and cache app dependencies
# COPY package.json package-lock.json ./
# RUN npm install
# EXPOSE 3000
# # start app
# CMD ["npm", "run", "dev"]
COPY . .
ENTRYPOINT npm install && npm run dev

