defmodule FizzBuzz do
  @spec fizzbuzz(integer) :: <<_::32, _::_*32>> | integer
  def fizzbuzz(x) do
    case {rem(x, 3), rem(x,5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> x
    end
  end
end
