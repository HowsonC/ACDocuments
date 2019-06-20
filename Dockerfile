FROM node
WORKDIR /build

EXPOSE 4000

RUN npm install gitbook -g;
RUN npm install gitbook-cli -g;

WORKDIR /build/work

RUN gitbook init

CMD ["gitbook", "serve"]
