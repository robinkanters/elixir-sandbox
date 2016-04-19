defmodule PalindromeTest do
  use ExUnit.Case

  test "robin is not a palindrome" do
    assert Palindrome.is_palindrome?("robin") == false
  end

  test "toohottohoot is a palindrome" do
    assert Palindrome.is_palindrome?("toohottohoot")
  end
end