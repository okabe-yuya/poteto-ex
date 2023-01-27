defmodule Poteto do
  def main(_args) do
    spawn(fn -> command_exec(:os.type(), :play_sound, [
      # Darwin
      "/Users/takamizawa46/sounds/poteto_sounds.mp3"
      # Windows
      # "C:\\Users\\takamizawa46\\Music\\poteto_sounds.wav"
    ]) end)

    IO.puts("🍟「再生を停止したい場合は 'stop' と入力して下さい」")
    receiver()
  end

  defp receiver do
    case IO.gets("") do
      "stop\n" -> command_exec(:os.type(), :stop_sound, [])
      _ -> receiver()
    end
  end

  defp command_exec({ :win32, _ }, function, args), do: apply(OS.Windows, function, args)
  defp command_exec({ :unix, :darwin }, function, args), do: apply(OS.Darwin, function, args)
  defp command_exec(_, _function, _args), do: :pass

end
