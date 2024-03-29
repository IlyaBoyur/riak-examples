FROM ruby:3.1-alpine
RUN apt-get update -y --no-install-recommends
RUN apt-get install -y --no-install-recommends \
    make `# для установки gem json`
# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN chmod +x entrypoint.sh