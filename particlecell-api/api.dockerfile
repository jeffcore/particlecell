FROM python:3.6
ENV FLASK_APP autoapp.py
ENV FLASK_CONFIG development
ENV FLASK_DEBUG 1
ENV CONDUIT_SECRET something-really-secret
# ENV FLASK_CONFIG testing
ADD ./app /app
WORKDIR /app
EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN ["chmod", "+x", "boot.sh"]
ENTRYPOINT ["./boot.sh"]
