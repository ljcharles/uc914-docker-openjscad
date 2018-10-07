FROM node:alpine

RUN git clone https://github.com/jscad/OpenJSCAD.org

RUN cd /OpenJSCAD.org/packages/web

RUN npm install
