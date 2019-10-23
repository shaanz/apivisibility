FROM node
WORKDIR /app
RUN npm install 
RUN npm install express 
COPY exp_api.js /app
CMD node exp_api.js
EXPOSE 3000 
