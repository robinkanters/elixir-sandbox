defmodule Palindrome do
  def is_palindrome?(string) do
    string == string |> Reverse.reverse
  end
end
