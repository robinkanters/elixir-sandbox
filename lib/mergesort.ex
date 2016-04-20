defmodule Mergesort do
  def sort([]) do [] end
  def sort([a]) do [a] end
  def sort(l) do
      middle = div(length(l), 2)
      left = Enum.slice(l, 0, middle)
      right = Enum.slice(l, middle, length(l) - length(left))
      left = sort(left)
      right = sort(right)
      merge(left, right)
  end

  def merge([], right) do right end
  def merge(left, []) do left end
  def merge(left, right) do
    cond do
      hd(left) <= hd(right) -> [hd(left) | merge(tl(left), right)]
      true -> [hd(right) | merge(left, tl(right))]
    end
  end
end