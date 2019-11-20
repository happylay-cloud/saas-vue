FROM node

RUN cd /

RUN git clone https://github.com/happylay-cloud/vue-admin.git

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

RUN cd /vue-admin

RUN ls

RUN cnpm install 

RUN cnpm run build 

COPY entrypoint.sh /usr/local/bin/

RUN mkdir /html

RUN chmod 755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

WORKDIR /vue-admin

EXPOSE 8080

CMD ["mv /vue-admin/dist /html"]

