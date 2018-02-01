FROM  node:carbon
USER root
RUN npm install yarn -g
RUN mkdir Bucketlist-react
COPY . Bucketlist-react
WORKDIR Bucketlist-react
RUN yarn install
EXPOSE 8000:3001
ENTRYPOINT [ "yarn", "start" ]


