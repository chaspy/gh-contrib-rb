require "gh/contrib"
require "thor"

class CLI < Thor
  desc "report your contribution","-u <user>"
  option :user, type: :string, aliases: '-u', desc: 'GitHub user name'
  def report
    puts "hello, #{options[:user]}"
  end
end
