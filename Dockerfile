FROM node
ENV NODE_ENV=development
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm ci
COPY . .
COPY .aws /home/root/
CMD [ "node", "./bin/www" ]