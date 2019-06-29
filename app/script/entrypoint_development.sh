#/bin/sh
echo -------------------------------
bundle exec rails db:migrate
bundle exec rails assets:precompile
bundle exec rails s -p 3000 -b 0.0.0.0
echo -------------------------------
