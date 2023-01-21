defmodule OS.Darwin do
  def play_sound(sound_path) do
    System.cmd("afplay", [sound_path])
  end

  def stop_sound do
    System.cmd("killall", ["afplay"])
  end
end
