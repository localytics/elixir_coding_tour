defmodule E.TheObserver do
  # http://www.erlang.org/doc/apps/observer/
  def not_doing_much do
    Enum.each(1..1000, &IO.puts "Hi mom #{&1}!")
  end

  def omg_doing_a_lot do
    1..1_000_000
    |> Enum.map(fn i ->
      Task.async(fn -> IO.puts "HI from task: #{i}" end)
    end)
    |> Enum.map(&Task.await/1)
  end


  def a_tree do
    ~W(a b c d)
    |> Enum.reduce(%{}, fn c, acc ->
      Dict.put(acc, c, Enum.to_list(1..10))
    end)
  end

  def a_forest do
    Enum.map(1..1_000, fn _ -> a_tree end)
  end

  def the_amazon do
    Enum.map(1..1_000, fn _ -> a_forest end)
  end
end
