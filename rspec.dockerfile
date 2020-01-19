# for unit testing in rspec, capybara, selenium
FROM ruby:alpine
MAINTAINER Peter Lin <peter.tingyao@gmail.com>

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]
# entrypoint tells container how to run
# CMD is similar to entrypoint
# entrypoint => for docker images that can support input arguments