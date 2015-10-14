defmodule E.Doctest do
  # http://elixir-lang.org/docs/v1.1/ex_unit/ExUnit.DocTest.html
  # Your documentation can also work as test code!
  @doc """
  iex> E.Doctest.add(1,2)
  3

  iex> E.Doctest.add(-1,5)
  4
  """
  def add(a,b) do
    a + b
  end
end
