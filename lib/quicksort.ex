defmodule Quicksort do
  def quicksort([]) do [] end

  def quicksort(list, true) do
    quicksort(list) |> Reverse.reverse
  end
  def quicksort(list, false) do
    quicksort(list)
  end

  def quicksort([h|t]) do
    below = t |> Enum.filter &(&1 <= h)
    above = t |> Enum.filter &(&1 > h)

    quicksort(below) ++ [h | quicksort(above)]
  end
end