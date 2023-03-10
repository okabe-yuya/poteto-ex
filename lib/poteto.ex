defmodule Poteto do
  def main(_args) do
    spawn(fn -> command_exec(:os.type(), :play_sound, ["/Users/takamizawa46/sounds/poteto_sounds.mp3"]) end)

    IO.puts("πγεηγεζ­’γγγε ΄εγ― 'stop' γ¨ε₯εγγ¦δΈγγγ")
    receiver()
  end

  defp receiver do
    case IO.gets("") do
      "stop\n" -> command_exec(:os.type(), :stop_sound, [])
      _ -> receiver()
    end
  end

  defp command_exec({ :win32, _ }, _function, _args), do: :pass
  defp command_exec({ :unix, :darwin }, function, args), do: apply(OS.Darwin, function, args)
  defp command_exec(_, _function, _args), do: :pass

end
