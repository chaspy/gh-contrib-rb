# Gh::Contrib
[![CircleCI](https://circleci.com/gh/chaspy/gh-contrib/tree/master.svg?style=svg)][status]
[![GitHub release](https://img.shields.io/github/release/chaspy/gh-contrib/all.svg?style=flat-square)][release]
[![Gem Version](https://badge.fury.io/rb/gh-contrib.svg)][gem]
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]

[status]: https://circleci.com/gh/chaspy/gh-contrib
[release]: https://github.com/chaspy/gh-contrib/releases
[gem]: https://badge.fury.io/rb/gh-contrib
[license]: https://github.com/chaspy/gh-contrib/blob/master/LICENSE

Show your contribution for a specific time period.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gh-contrib'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gh-contrib

## Usage

    $ bundle exec exe/gh-contrib report -u <GitHub user name> -s YYYY-MM-DD -e YYYY-MM-DD

If you get the report includes the private repository, please set environment variable:

    $ export GHCONTRIB_TOKEN="<your access token>"

## Example

```
 $ gh-contrib report -u chaspy -s 2018-09-13 -e 2018-09-14
Hi chaspy, this is your contribution report :tada: in 2018-09-13..2018-09-14
# Pull Request
your created and merged pull request is 2!!

Add badges
https://github.com/chaspy/gh-contrib/pull/11

Exit when get abnormal status code
https://github.com/chaspy/gh-contrib/pull/10
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/gh-contrib.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
