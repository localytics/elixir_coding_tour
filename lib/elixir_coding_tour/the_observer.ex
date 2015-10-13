defmodule ElixirCodingTour.TheObserver do
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
end
