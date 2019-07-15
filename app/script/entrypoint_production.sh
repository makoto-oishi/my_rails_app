#/bin/sh
echo 1------------------------------
if [ -e /app/tmp/pids/server.pid ]; then
    rm -f /app/tmp/pids/server.pid;
fi

bundle exec rails db:migrate
bundle exec rails assets:precompile
bundle exec rails s -p 3000 -b 0.0.0.0
