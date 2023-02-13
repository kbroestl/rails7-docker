ARG RUBY_VERSION=3.2.0
FROM ruby:$RUBY_VERSION

WORKDIR /usr/src/app

COPY . .
RUN bundle install
ENTRYPOINT ["./entrypoint.sh"]

CMD ["rails", "server", "-b", "0.0.0.0"]