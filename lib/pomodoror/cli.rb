require "pomodoror"
require "thor"

module Pomodoror
  class CLI < Thor
    desc "start", "pomodoro start"
    def start
      puts 'start'
    end

    desc "stop", "pomodoro stop"
    def stop
      puts 'stop'
    end
  end
end
