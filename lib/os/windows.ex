defmodule OS.Windows do
  def play_sound(sound_path) do
    System.cmd("pwsh", ["-Command", "(New-Object Media.SoundPlayer \"#{sound_path}\").PlaySync()"])
  end

  def stop_sound() do
    System.cmd("pwsh", ["-Command", "Get-Process | Where-Object ProcessName -eq pwsh | Where-Object CommandLine -Like *Media.SoundPlayer* | Stop-Process"])
  end
end