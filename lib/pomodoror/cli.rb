require "pomodoror"
require "thor"
require "pomodoror/timer"

module Pomodoror
  class CLI < Thor
    desc "start", "pomodoro start"
    def start
      Timer.start_work
    end
  end
end
