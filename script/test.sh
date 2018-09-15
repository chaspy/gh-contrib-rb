#!/bin/bash
set -x
gem install bundler
bundle install
bundle exec rspec
bundle exec exe/gh-contrib report -u chaspy -s 2018-08-31 -e 2018-09-05
