FROM ruby:2.5

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ADD Gemfile Gemfile.lock /usr/src/app/
ADD vendor /usr/src/app/vendor
RUN bundle install --deployment --local

ADD . /usr/src/app

CMD [ "./app.rb", "-O", "0.0.0.0" ]
