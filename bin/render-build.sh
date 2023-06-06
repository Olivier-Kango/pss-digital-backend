#!/usr/bin/env bash
# exit on error
set -o errexit

gem install bundler -v 2.4.10 --user-install

# Add the gem executables directory to the PATH
export PATH=/opt/render/ruby/2.6.0/bin:$PATH

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
