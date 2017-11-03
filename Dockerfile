FROM h3poteto/rails:v2.3.4

USER rails

ENV RAILS_ENV production
ENV PORT 3000

EXPOSE 3000:3000

WORKDIR /usr/src/app

COPY . /usr/src/app
USER root
RUN chown -R rails:rails /usr/src/app
USER rails
RUN bundle install



CMD bash -l -c "bundle exec puma -C config/puma.rb"