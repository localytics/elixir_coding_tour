defmodule E.PatternMatching do
  # http://elixir-lang.org/getting-started/pattern-matching.html
  # keeps functions definitions short, easy to understand
  def ian_likes?(:pizza), do: true
  def ian_likes?(:sardines), do: false
  def ian_likes?(thing) do
    IO.puts "No clue. I haven't tried #{thing} yet"
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
