FROM node:16-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
<<<<<<< HEAD
RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]
=======
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-s", "-l", "3000", "build"]
>>>>>>> f260a195699f300e27f4414bdf1e58ef150eba93
