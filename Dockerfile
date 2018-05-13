FROM h3poteto/rails:v2.5.1

USER rails

ENV RAILS_ENV production
ENV PORT 3000

EXPOSE 3000:3000

WORKDIR /usr/src/app

COPY . /usr/src/app
USER root
RUN chown -R rails:rails /usr/src/app
USER rails
RUN set -x \
  && bundle install --jobs=4 \
  && bundle exec rake assets:precompile RAILS_ENV=production

CMD bash -l -c "bundle exec puma -C config/puma.rb"
