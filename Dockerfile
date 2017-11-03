FROM h3poteto/rails:v2.3.4

USER rails

ENV RAILS_ENV production
ENV PORT 3000

EXPOSE 3000:3000


WORKDIR /usr/src/app

COPY --chown=rails:rails Gemfile /usr/src/app
COPY --chown=rails:rails Gemfile.lock /usr/src/app

RUN bundle install

COPY --chown=rails:rails . /usr/src/app
RUN bundle install



CMD bash -l -c "bundle exec puma -C config/puma.rb"