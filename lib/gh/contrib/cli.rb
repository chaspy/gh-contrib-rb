require "gh/contrib"
require "thor"
require 'net/https'

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

    terms = "#{s}"+".."+"#{e}"
    path = "/search/issues?q=type:pr+in:body+is:merged+merged:#{terms}+author:#{u}&per_page=100"

    https = Net::HTTP.new('api.github.com',443)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    https.start {
      response = https.get(path)
      puts response.body
    }

    puts "hello, #{options[:user]}. Get your contribution from #{options[:start]} to #{options[:end]}"
  end
end
