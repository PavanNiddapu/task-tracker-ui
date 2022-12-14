FROM node:14-alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
RUN npm run build
RUN npm install -g serve 
CMD ["serve", "-s", "build"]
