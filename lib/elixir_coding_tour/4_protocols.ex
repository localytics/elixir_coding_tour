defmodule E.Protocols do
  # This is how elixir implements polymorphism
  # http://elixir-lang.org/getting-started/protocols.html
  defprotocol Awesomeness do
    @fallback_to_any true
    def has_it?(data)
  end

  defimpl Awesomeness, for: BitString do
    def has_it?(str), do: str == "elixir"
  end

  defimpl Awesomeness, for: Atom do
    def has_it?(atom), do: atom == :elixir
  end

  defimpl Awesomeness, for: Any do
    def has_it?(_), do: false
  end
end

