FROM python:3

ADD ./fabfile /usr/fabfile

CMD easy_install pdbpp && pip install -U -r /usr/app/django/requirements/production.txt

RUN apt-get install binutils libproj-dev gdal-bin

RUN pip install Fabric3==1.13.1.post1

RUN cd /tmp && \
        wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
        mkdir -p /usr/local/lib /usr/local/bin && \
        tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
        ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku


