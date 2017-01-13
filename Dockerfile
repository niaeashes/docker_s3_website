FROM ruby:2.3.3

RUN gem install s3_website

RUN apt-get update

VOLUME ["/website", "/config"]

WORKDIR /website

ENTRYPOINT ["s3_website"]

CMD ["--help"]
