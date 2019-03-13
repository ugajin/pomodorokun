require 'open3'
require 'pomodorokun/sutereokun'

module Taimukun
  def start_working
    countdown 'start_breaking', 'now working...', 1500, 'play_start_breaking'
  end

  def start_breaking
    countdown 'start_working', 'break time!!!', 300, 'play_start_working'
  end

  def countdown callback, text, sec, play_sound_method
    while sec != 0 do
      sec -= 1

      output = "#{sec / 60} : #{sec % 60}"
      print "\033[2K#{text} #{output}\033[100D"

      Sutereokun.play_countdown if sec == 6
      Sutereokun.send(play_sound_method) if sec == 2

      sleep 1
    end

    send callback
  end

  module_function :start_working, :start_breaking, :countdown
end
