defmodule PalindromeTest do
  use ExUnit.Case

  test "robin is not a palindrome" do
    assert Palindrome.is_palindrome?("robin") == false
  end
end