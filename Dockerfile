FROM ad2games/docker-rails:2.0.1

RUN base -ec "chpst -u app RAILS_ENV=production bundle exec rake db:migrate SECRET_KEY_BASE=noop DATEBASE_URL=postgres://noop"
