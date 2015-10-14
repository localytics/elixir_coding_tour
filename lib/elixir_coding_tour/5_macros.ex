defmodule E.Macros do
  # the internal representation is a three-element tuple
  # in the following format: {fn, metadata, args}
  #iex> quote do: 1 + 2
  #{:+, [context: Elixir, import: Kernel], [1, 2]}

  # number one rule of macros is, "don't write macros!"
  # second rule is, "use macros!"
  # macros are hygienic by default, but can also be
  # made unhygienic using "var!"

  defmacro do_stuff_to_a_yak(verbings) do
    Enum.map(verbings, fn verbing ->
      quote do
        def unquote(:"yak_#{verbing}")() do
          "You're #{unquote(verbing)} the yak."
        end
      end
    end)
  end
end
