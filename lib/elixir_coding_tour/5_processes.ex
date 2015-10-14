defmodule E.Processes do
  # demonstrats spawning processes, inter-process communication,
  # anonymous functions, recursion (tail-call optimization), pattern-matching


  def workers do
    # spawn a process, passing in the Module name, the function,
    # and the arguments to the function
    dev = spawn(E.Processes, :developer, [])
    product = spawn(E.Processes, :product_person, [])
    # return a tuple with two anonymous functions that will
    # represent a dev and product person respectively
    {fn msg -> dev_says({dev, product}, msg) end,
    fn msg -> product_says({dev, product}, msg) end}
  end


  def dev_says({dev, product}, msg) do
    # send to the "product" pid the tuple {dev, msg}
    send product, {dev, msg}
    # implicitly return nil
    nil
  end

  def product_says({dev, product}, msg) do
    # send to the "dev" pid the tuple {product, msg}
    send dev, {product, msg}
    # implicitly return nil
    nil
  end

  def developer do
    receive do
      # match if a tuple with a single element comes in
      {msg} ->
        IO.puts "Product says: #{msg}"
        # recursively call developer to keep listening for messages
        developer
      # match if a tuple with a two elements comes in
      {sender, msg} ->
        send sender, {"I don't care about \"#{msg}\". We need to refactor!!"}
        # recursively call developer to keep listening for messages
        developer
    end
  end

  def product_person do
    receive do
      {msg} ->
        IO.puts "Dev says: #{msg}"
        product_person
      {sender, msg} ->
        send sender, {"I don't care about \"#{msg}\". Ship more features!"}
        product_person
    end
  end
end
