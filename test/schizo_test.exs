defmodule SchizoTest do
  use ExUnit.Case
  doctest Schizo

  test "uppercase doesn't change the first word" do
    assert(Schizo.uppercase("foo") == "foo")
  end

  test "uppercase converts the second word to uppercase" do
    assert(Schizo.uppercase("foo bar") == "foo BAR")
  end

  test "uppercase converts ever other word to uppercase" do
    assert(Schizo.uppercase("foo bar baz bip") == "foo BAR baz BIP")
  end


  test "unvowel doesn't change the first word" do
    assert(Schizo.unvowel("foo") == "foo")
  end

  test "unvowel removes vowels from the second word" do
    assert(Schizo.unvowel("foo bar") == "foo br")
  end

  test "unvowel removes the vowel from ever other word" do
    assert(Schizo.unvowel("foo bar baz bip") == "foo br baz bp")
  end
end

