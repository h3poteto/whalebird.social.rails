FROM h3poteto/rails:v2.6.3-slim-buster

USER rails

ENV RAILS_ENV production
ENV PORT 3000

EXPOSE 3000:3000

WORKDIR /usr/src/app

COPY . /usr/src/app
USER root
RUN chown -R rails:rails /usr/src/app
RUN set -x \
  && curl -fsSL https://github.com/minamijoyo/myaws/releases/download/v0.3.0/myaws_v0.3.0_linux_amd64.tar.gz \
  | tar -xzC /usr/local/bin && chmod +x /usr/local/bin/myaws

USER rails
RUN set -x \
  && bundle install --jobs=4 \
  && bundle exec rake assets:precompile

ENTRYPOINT ["./entrypoint.sh"]

CMD bundle exec puma -C config/puma.rb
