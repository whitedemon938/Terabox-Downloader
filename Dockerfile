FROM mysterysd/wzmlx:heroku
RUN apt-get update --fix-missing && apt-get upgrade -y
RUN apt-get install -y libnss3 libxss1 libasound2 libatk-bridge2.0-0 libatk1.0-0 libcups2 libxcomposite1 libxrandr2 libxi6 libgconf-2-4 libgtk-3-0 libxdamage1 libxext6 libgbm1 libnss3 wget unzip

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash","start.sh"]
