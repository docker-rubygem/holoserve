FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.4

RUN gem install holoserve --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["holoserve"]
CMD ["--help"]
