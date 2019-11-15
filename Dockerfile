FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -;
RUN apt-get install -y make nodejs
RUN npm install -g @vue/cli
RUN mkdir /code
WORKDIR /code
COPY requirements/ /code/requirements/
RUN pip install -r requirements/local.txt
COPY . /code/
