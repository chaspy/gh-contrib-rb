require "gh/contrib"
require "thor"

class CLI < Thor
  desc "report your contribution","-u <user>"
  option :user, type: :string, aliases: '-u', desc: 'GitHub user name'
  option :start, type: :string, aliases: '-s', desc: 'Start date to get your contribution'
  option :end, type: :string, aliases: '-e', desc: 'End date to get your contribution'
  def report
    # validate arguments
    u = options[:user]
    s = options[:start]
    e = options[:end]
    if u.empty?
      return false
    elsif !s.match(/\d{4}-\d{2}-\d{2}/)
      return false
    elsif !e.match(/\d{4}-\d{2}-\d{2}/)
      return false
    else
      true
    end

    puts "hello, #{options[:user]}. Get your contribution from #{options[:start]} to #{options[:end]}"
  end
end
