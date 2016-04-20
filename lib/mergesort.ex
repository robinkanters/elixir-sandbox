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
    _merge(hd(left) <= hd(right), left, right)
  end

  defp _merge(true, left, right) do
    [hd(left) | merge(tl(left), right)]
  end

  defp _merge(_, left, right) do
    [hd(right) | merge(left, tl(right))]
  end
end