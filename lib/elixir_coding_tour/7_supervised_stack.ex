defmodule E.SupervisedStack do
  # http://elixir-lang.org/getting-started/mix-otp/genserver.html
  # http://elixir-lang.org/getting-started/mix-otp/supervisor-and-application.html
  use GenServer

  # begin client functions that allow us to talk to the server
  def push(value) do
    GenServer.cast(:sup_stack, {:push, value})
  end

  def pop do
    GenServer.call(:sup_stack, :pop)
  end

  def peek do
    GenServer.call(:sup_stack, :peek)
  end

  def list do
    GenServer.call(:sup_stack, :list)
  end
  # end client functions

  # start the server
  def start_link(state) do
    GenServer.start_link(__MODULE__, state, [name: :sup_stack])
  end

  # begin implementation of server callbacks
  def handle_call(:list, _from, stack) do
    {:reply, stack, stack}
  end

  def handle_call(:peek, _from, [h|t]) do
    {:reply, h, [h|t]}
  end

  def handle_call(:pop, _from, [h|t]) do
    {:reply, h, t}
  end

  def handle_cast({:push, h}, t) do
    {:noreply, [h|t]}
  end
  # end implementation of server callbacks
end
