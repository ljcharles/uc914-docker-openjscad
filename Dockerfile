# cd base-directory-of-website
# git clone https://github.com/jscad/OpenJSCAD.org
# cd OpenJSCAD.org
# cd packages/web . // this is where the web version is
# cp ../examples ./examples // copy the examples here
# if desired, start dev server: npm run start-dev

FROM node:8

WORKDIR /home/openjscad

RUN git clone https://github.com/jscad/OpenJSCAD.org

WORKDIR /home/openjscad/OpenJSCAD.org/packages/web

RUN npm install

RUN mkdir examples

RUN cp -r ../examples/* examples

CMD ["npm", "run", "start-dev"]
