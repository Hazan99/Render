FROM node:20

RUN git clone https://github.com/Hazan99/Queen_Alya.git /root/STAR-KING0

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/STAR-KING0/node_modules

# Install dependencies
WORKDIR /root/STAR-KING0
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
