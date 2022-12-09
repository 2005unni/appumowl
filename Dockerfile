FROM quay.io/appumowl/appumowl:latest

RUN git clone https://github.com/2005unni/appumowl /root/hermit-md
WORKDIR /root/hermit-md/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
