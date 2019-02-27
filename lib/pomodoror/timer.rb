module Timer
  def start_work
    countdown 'start_break', 'now working...', 1500
  end

  def start_break
    countdown 'start_work', 'break time!!!', 300
  end

  def countdown callback_name, text, sec
    while sec != 0 do
      sec -= 1
      output = "#{sec / 60} : #{sec % 60}"
      print "\033[2K#{text} #{output}\033[100D"
      sleep 1
    end

    send callback_name
  end

  module_function :start_work, :start_break, :countdown
end
