defmodule E.Processes do
  def create_product_person do
    spawn(ElixirCodingTour.Processes, :product_person, [])
  end

  def create_developer do
    spawn(ElixirCodingTour.Processes, :developer, [])
  end

  def developer do
    receive do
      {sender, msg} ->
        send sender, { :ok, "I am dev" }
        developer
    end
  end

  def product_person do
    receive do
      {sender, msg} ->
        send sender, { :ok, "I am product" }
        product_person
    end
  end
end
