FROM node:18
WORKDIR /frontend
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 7002
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "7002"]
