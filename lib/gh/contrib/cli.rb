require "gh/contrib"
require "thor"
require 'net/https'
require 'json'

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
    uri = URI('https://api.github.com' + path)

    req = Net::HTTP::Get.new(uri)
    req['Authorization'] = 'token ' + ENV['GHCONTRIB_TOKEN'] if !ENV['GHCONTRIB_TOKEN'].empty?

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') { |http|
      http.request(req)
    }

    result = JSON.parse(response.body)

    puts "Hi #{u}, this is your contribution report :tada: in #{terms}"
    puts "# Pull Request"
    puts "your created and merged pull request is #{result['total_count']}!!"
    puts ""

    result['items'].each { |i|
      puts i['title']
      puts i['html_url']
      puts ""
    }
    
  end
end
