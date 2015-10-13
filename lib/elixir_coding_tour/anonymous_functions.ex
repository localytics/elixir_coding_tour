defmodule ElixirCodingTour.AnonymousFunctions do
  # basic demo of anonymous function syntax

  def perform_farmer_duties(animal) do
    [
      animal_tickling(animal),
      animal_shaving(animal),
      animal_milking(animal)
    ] |> Enum.each(&(IO.puts &1.()))
  end

  def animal_milking(animal) do
    fn -> verbing_an_animal("milking", animal) end
  end

  def animal_tickling(animal) do
    fn -> verbing_an_animal("tickling", animal) end
  end

  def animal_shaving(animal) do
    fn -> verbing_an_animal("shaving", animal) end
  end

  defp verbing_an_animal(verbing, animal) do
    "You're #{verbing} the #{animal}."
  end
end
