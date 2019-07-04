#/bin/sh
echo -------------------------------
if [ -e /app/tmp/pids/server.pid ]; then 
    rm -f /app/tmp/pids/server.pid; 
fi

bundle exec rails db:migrate
bundle exec rails assets:precompile
foreman start
echo -------------------------------
