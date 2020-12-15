FROM node:12.10.0

WORKDIR /usr/app

RUN export NODE_ENV=development

RUN npm init -y 
RUN npm install -g create-react-app 
RUN npx create-react-app react-app
# RUN npm init -y
# RUN npx create-react-app react-app
# RUN npm install -g create-react-app

WORKDIR /usr/app/react-app

# RUN npm i react-admin --save
RUN ls -al
EXPOSE 3000

CMD ["npm", "start"]