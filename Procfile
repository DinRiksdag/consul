web: bundle exec rails server -b 0.0.0.0 -e ${RACK_ENV:-production}
worker:  bundle exec rake db:migrate
worker:  bundle exec rake db:dev_seed
