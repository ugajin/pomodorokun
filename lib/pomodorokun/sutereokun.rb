module Sutereokun
  def play_countdown
    Open3.popen3 ("afplay #{File.expand_path('../../sound/countdown.mp3', __FILE__)}")
  end

  def play_start_working
    Open3.popen3 ("afplay #{File.expand_path('../../sound/private.mp3', __FILE__)}")
  end

  def play_start_breaking
    Open3.popen3 ("afplay #{File.expand_path('../../sound/menso-re.mp3', __FILE__)}")
  end

  module_function :play_countdown, :play_start_working, :play_start_breaking
end
