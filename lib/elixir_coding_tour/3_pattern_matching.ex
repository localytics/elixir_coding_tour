defmodule E.PatternMatching do
  # http://elixir-lang.org/getting-started/pattern-matching.html
  # keeps functions definitions short, easy to understand
  def bob_likes?("pizza"), do: true
  def bob_likes?("sardines"), do: false
  def bob_likes?(thing) do
    IO.puts "No clue. Bob hasn't tried #{thing} yet"
  end

  # recursion is super easy to understand
  def reverse_list([], reversed), do: reversed
  def reverse_list([h | t], reversed \\ []) do
    reverse_list(t, [h | reversed])
  end

  # makes it easy to parse out values you care about
  def params(%{key: value, color: color}) do
    IO.puts "key: #{value}"
    IO.puts "color: #{color}"
  end
end
