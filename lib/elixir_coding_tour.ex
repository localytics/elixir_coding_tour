defmodule ElixirCodingTour do
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [worker(ElixirCodingTour.SupervisedStack, [[:hello]])]

    opts = [strategy: :one_for_one, name: ElixirCodingTour.SupervisedStack]
    Supervisor.start_link(children, opts)
  end
end
