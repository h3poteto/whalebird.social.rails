FROM ghcr.io/h3poteto/rails-node:3.1.3-node16-slim-bullseye

USER rails

ENV RAILS_ENV production
ENV PORT 3000

EXPOSE 3000

WORKDIR /usr/src/app

COPY . /usr/src/app
USER root
RUN chown -R rails:rails /usr/src/app

USER rails
RUN set -x \
  && bundle install --jobs=4 \
  && bundle exec rake assets:precompile

ENTRYPOINT ["./entrypoint.sh"]

CMD bundle exec puma -C config/puma.rb
