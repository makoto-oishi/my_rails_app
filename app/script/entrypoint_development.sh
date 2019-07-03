#/bin/sh
echo -------------------------------
bundle exec rails db:migrate
bundle exec rails assets:precompile
foreman start
echo -------------------------------
