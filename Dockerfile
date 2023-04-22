FROM nginx:stable-alpine
LABEL maintainer="Pikabot"

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 80

CMD ["bash", "start.sh"]
