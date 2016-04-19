defmodule Reverse do
  def reverse([]) do
    []
  end

  def reverse([h|t]) do
    reverse(t) ++ [h]
  end

  def reverse(string) do
    string
      |> String.codepoints
      |> reverse
      |> to_string
  end
end