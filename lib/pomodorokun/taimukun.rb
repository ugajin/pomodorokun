require 'open3'

module Taimukun
  def start_work
    countdown 'start_break', 'now working...', 1500, :working
  end

  def start_break
    countdown 'start_work', 'break time!!!', 300, :breaking
  end

  def countdown callback_name, text, sec, type
    while sec != 0 do
      sec -= 1
      output = "#{sec / 60} : #{sec % 60}"
      print "\033[2K#{text} #{output}\033[100D"

      play_sound(sec, type)
      sleep 1
    end

    send callback_name
  end

  def play_sound(sec, type)
    if sec == 6
      Open3.popen3 ("afplay #{File.expand_path('../../sound/countdown.mp3', __FILE__)}")
    end

    if type == :working && sec == 2
      Open3.popen3 ("afplay #{File.expand_path('../../sound/private.mp3', __FILE__)}")
    end

    if type == :breaking && sec == 2
      Open3.popen3 ("afplay #{File.expand_path('../../sound/menso-re.mp3', __FILE__)}")
    end
  end

  module_function :start_work, :start_break, :countdown, :play_sound
end
