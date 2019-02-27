require "pomodoror"
require "thor"

module Pomodoror
  class CLI < Thor
    desc "start", "pomodoro start"
    def start
      start_work
    end

    def start_work sec = 5 # 60sec * 25min
      while sec != 0 do
        sec -= 1
        output = "#{sec / 60} : #{sec % 60}"
        print "\033[2Know working... #{output}\033[100D"
        sleep 1
      end

      start_break
    end

    def start_break sec = 300 # 60sec * 5min
      while sec != 0 do
        sec -= 1
        output = "#{sec / 60} : #{sec % 60}"
        sleep 1
        print "\033[2Kbreak time!!! #{output}\033[100D"
      end

      start_work
    end
  end
end
