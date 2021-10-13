FROM python
LABEL Nikolay Voloshin <voloshin07@gmail.com>
ENTRYPOINT ["/entrypoint.sh"]
ENV TZ=Asia/Bishkek
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN sudo apt-update && sudo apt-get install -y python3-mysqldb
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh