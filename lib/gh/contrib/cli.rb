require "gh/contrib"
require "thor"

module Hello
  class CLI < Thor
    desc "hello sample","str"
    def hello(str)
      puts "hello, #{str}"
    end
  end
end
