defmodule ReverseTest do
  use ExUnit.Case

  test "robin is nibor" do
    assert Reverse.reverse("robin") == "nibor"
  end

  test "Robin is niboR" do
    assert Reverse.reverse("Robin") == "niboR"
  end
end
