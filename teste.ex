defmodule Teste do
  def fizz(x) do
    (1..x)
    |> Enum.map(&buzz/1)
    |> Enum.map(fn x -> buzz(x) end)
    |> Enum.each(&IO.puts/1)
  end

  defp buzz(i) when rem(i, 15) == 0, do:
  "FizzBuzz"
  defp buzz(i) when rem(i, 5)  == 0, do:
  "Buzz"
  defp buzz(i) when rem(i, 3)  == 0, do:
  "Fizz"
  defp buzz(i), do:
  Integer.to_string(i)
end
