defmodule FizzBuzz do
  def print do
    1..100 |> Enum.map(&fizzbuzz/1) |> IO.write
  end
  
  def fizzbuzz(x) when rem(x, 15) === 0, do: "FizzBuzz"
  def fizzbuzz(x) when rem(x,  5) === 0, do: "Buzz"
  def fizzbuzz(x) when rem(x,  3) === 0, do: "Fizz"
  def fizzbuzz(x), do: "#{x}"
end
