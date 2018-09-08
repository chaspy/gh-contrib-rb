require "gh/contrib"
require "thor"

class CLI < Thor
  desc "report your contribution","-u <user>"
  option :user, type: :string, aliases: '-u', desc: 'GitHub user name'
  option :start, type: :string, aliases: '-s', desc: 'Start date to get your contribution'
  option :end, type: :string, aliases: '-e', desc: 'End date to get your contribution'
  def report
    puts "hello, #{options[:user]}. Get your contribution from #{options[:start]} to #{options[:end]}"
  end
end
