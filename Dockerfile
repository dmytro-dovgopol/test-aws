FROM node:18-alpine
WORKDIR /home
COPY . /home
RUN npm ci
RUN npm run build
EXPOSE 3000
CMD npm run start:prod