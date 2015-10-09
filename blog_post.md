## Localytics <3 Elixir
A coworker and I just got back from ElixirConf and we are pumped. We heard talks on distributed computing, self-healing architectures, embedded systems, and web development. The things people are doing with elixir is incredible. The last time I saw this much enthusiasm for new tech was back when the ruby and rails rocket was preparing to launch.

## What is it?
So what's elixir? It's a programming language that compiles down to bytecode that runs on the erlang virtual machine, or BEAM. Jose Valim, elixir's creator, famously said that when he looked at erlang, "I loved what I saw, but hated what I didn't see." So he built a language that has all of erlang's strengths, plus more--macros, a nicer syntax, and a mature toolchain. 

## What does Localytics like about elixir?
Elixir is like a freakin Apple product. It's polished and shiny, but not just on the surface. Sure, you hear that it's functional, which seems to be all the rage these days. Then you see its expressive, ruby-like syntax, complete with the magical pipeline operator `|>` that reinforces the "pipeline of data" paradigm. Then, you dig deeper and realize it's already got a polished build tool--`mix`(http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html). Oh, it's also got a repl (`iex`), a test framework (`ExUnit` http://elixir-lang.org/docs/stable/ex_unit/ExUnit.html) and supports macros... yes, this language is homoiconic! Did I mention the package manager, `hex`? No? How about its support of typespecs, which allow you to use static analysis tools like dialyzer (http://www.erlang.org/doc/man/dialyzer.html) to catch bugs? 

Getting to know the language is analogous to an unboxing experience. 
