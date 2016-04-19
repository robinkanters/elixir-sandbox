defmodule QuicksortTest do
  use ExUnit.Case

  test "sort 1,4,2,5,3 to 1,2,3,4,5" do
    assert [1,2,3,4,5] == [1,4,2,5,3] |> Quicksort.quicksort
  end

  test "can sort in reverse" do
    assert [5,4,3,2,1] == [1,4,2,5,3] |> Quicksort.quicksort true
  end

  test "can sort nonsequential" do
    assert [1,4,6,8,10] == [6,4,8,10,1] |> Quicksort.quicksort
  end
end
