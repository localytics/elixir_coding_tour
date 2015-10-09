## Localytics <3 Elixir
A coworker and I just got back from ElixirConf and we are pumped. We heard talks on distributed computing, self-healing architectures, embedded systems, and web development. The things people are doing with elixir is incredible. The last time I saw this much enthusiasm for new tech was back when the ruby and rails rocket was preparing to launch.

## What is it?
So what's elixir? It's a programming language that compiles down to bytecode that runs on the erlang virtual machine, or BEAM. Jose Valim, elixir's creator, famously said that when he looked at erlang, "I loved what I saw, but hated what I didn't see." So he built a language that has all of erlang's strengths, plus more--macros, a nicer syntax, and a mature toolchain. 

## What does Localytics like about elixir?
Elixir is like a freakin Apple product. It's polished and shiny, but not just on the surface. It's ridiculously usable. Sure, it's functional, which seems to be all the rage these days. And yes, it has expressive, ruby-like syntax, complete with the magical pipeline operator `|>` that reinforces the "pipeline of data" paradigm. That's well and good, but beauty is only skin deep, right? Not with elixir.

Dig deeper and find its suite of robust, production-ready language tools:
 * [mix] (http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html) -- a versatile build tool
 * [iex] (http://elixir-lang.org/docs/stable/iex/IEx.html) -- a super-powered repl that shows you documentation, loads your code, reloads your code, and autocompletes both elixir and erlang functions
 * [ExUnit] (http://elixir-lang.org/docs/stable/ex_unit/ExUnit.html) -- a test builtin test framework
 * [EEx] (http://elixir-lang.org/docs/stable/eex/EEx.html) -- a robust templating library

And, if you've clicked any of those links, you've noticed the beautiful and thorough documentation that is a first-class citizen of the elixir ecosystem, brought to you by [ExDoc](https://github.com/elixir-lang/ex_doc). Diving into the elixir exosystem really is like unboxing something from Apple.

## Wait a sec... new languages aren't meant for production!
We agree. Production isn't for new-and-shiny. It's for old-and-boring. Thankfully, elixir manages to be both at the same time. It runs on the erlang VM, which has been around since 1986 and is thoroughly battle-tested. That means elixir stands on the shoulders of the entire erlang ecosystem of tools, libraries, and production experience. Elixir wraps OTP and can interop with any erlang functions with zero overhead. It is fully compatible with erlang's mind-blowing `observer` tool, invoked unceremoniously in `iex` by calling `:observer.start`. If you're a ruby dev who has ever had to jump through hoops to see what your system is doing, `:observer.start` will change your world.

## So what is it good for?
Erlang was created to build distributed, concurrent, soft real-time systems that are fault-tolerant. Think telecom, Whatsapp, stuff like that. Naturally, elixir excels at those things as well. However, elixir's approachability has opened up entire new areas of interest. (Phoenix)[http://www.phoenixframework.org/] is an elixir web framework that is gaining serious traction. It's being touted as a next-generation replacement for rails, complete with a elegant orm called [ecto](https://github.com/elixir-lang/ecto). It supports websockets out of the box and has seen performance 15x faster than rails (https://gist.github.com/omnibs/e5e72b31e6bd25caf39a) in benchmarks.

## What's next?
We're still early in our exploration of elixir at Localytics, but the language has gone viral among our developers. Our front-end is a vanilla rails app, complete with all the bells-and-whistles required for any respectable production rails app--background jobs, caches, multiple beefy application servers, monitoring systems--the works. Using elixir, we can simplify that entire stack into a single technology, all while increasing performance and reducing server costs. We've also got the typical big data processing concerns. 
