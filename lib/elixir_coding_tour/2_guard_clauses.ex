defmodule E.GuardClauses do
  # list of allowed expressions in guard clauses is here:
  # http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses


  # another way of keeping functions small and focused
  def allowed_to_go_boozing?(age, _) when age >= 21, do: :true
  def allowed_to_go_boozing?(age, country) when age >= 16 and country != :US do
    IO.puts "In #{country}? Yeah, probably."
    :probably
  end
  def allowed_to_go_boozing?(_, _), do: :false
end
