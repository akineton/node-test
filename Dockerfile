# Use node latest LTS
FROM node:latest
LABEL version="1.0"
COPY . /code
WORKDIR /code
RUN npm install
EXPOSE 7000
CMD ["npm","start"]
