defmodule E.AnonymousFunctions do
  # also see the tests at test/elixir_coding_tour/anonymous_functions_test.exs
  # basic demo of anonymous function syntax
  # http://elixir-lang.org/getting-started/basic-types.html#anonymous-functions

  # creates a yak_[word] function
  #import E.Macros
  #do_stuff_to_a_yak ["riding", "petting", "wrestling"]


  # specs are used to help with documentation generation
  # for use with static analysis tools like dialyzer
  @spec perform_farmer_duties(String.t) :: :ok
  def perform_farmer_duties(animal) do
    # an array of anonymous functions
    [
      animal_tickling(animal),
      animal_shaving(animal),
      animal_milking(animal)
    ]
    # use the pipeline operator to loop over
    # each function and execute it
    |> Enum.each(fn activity_fn -> IO.puts activity_fn.() end)
  end

  # implicitly returns an anonymous function
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
