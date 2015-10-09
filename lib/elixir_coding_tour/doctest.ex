defmodule ElixirCodingTour.Doctest do
  # http://elixir-lang.org/docs/v1.1/ex_unit/ExUnit.DocTest.html
  # Your documentation can also work as test code!
  @doc """
  iex> ElixirCodingTour.Doctest.add(1,2)
  3

  iex> ElixirCodingTour.Doctest.add(-1,5)
  4
  """
  def add(a,b) do
    a + b
  end
end
