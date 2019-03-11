require 'pomodorokun'
require 'thor'
require 'pomodorokun/taimukun'

module Pomodorokun
  class CLI < Thor
    desc "start", "pomodorokun start"
    def start
      Taimukun.start_work
    end
  end
end
