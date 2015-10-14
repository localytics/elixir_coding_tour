## Localytics <3 Elixir

Ian Asaff
Senior Engineer

Fellow Localytics engineer, Michael Macasek, and I just got back from ElixirConf (https://twitter.com/ElixirConf) and we are pumped. We heard talks on distributed computing, self-healing architectures, embedded systems, and web development. The things people are doing with Elixir is incredible. The last time I saw this much enthusiasm for new tech was back when the Ruby and Rails rocket was preparing to launch.

## What is it?

So what exactly is Elixir? It's a programming language that runs on the Erlang virtual machine. Jose Valim, Elixir's creator, famously said that when he looked at Erlang, "I loved what I saw, but hated what I didn't see." So he built a language that has all Erlang's strengths, plus more--macros, a nicer syntax, and a mature toolchain. What's Erlang? It's a language that's been around since 1986 and open-sourced in 1998. It's known for powering telecommunications systems that have achieved [nine nines of uptime](https://pragprog.com/articles/erlang)--that’s not a typo. Elixir is Erlang with more strengths and fewer weaknesses.

## So is Erlang only for telco stuff?

Nope! Erlang was built to create systems that are fast, responsive, and reliable. It’s well-suited for messaging systems, high velocity/volume big-data systems, web applications, etc. For example, [Phoenix] (http://www.phoenixframework.org/) is an Elixir web framework that is gaining serious traction. It's being touted as the next-generation replacement for Rails, complete with an elegant orm called [ecto](https://github.com/elixir-lang/ecto). It supports websockets out of the box and was measured to be 15x faster than Rails (https://gist.github.com/omnibs/e5e72b31e6bd25caf39a) in benchmarks. In the same way that javascript has evolved beyond its web-browser roots, elixir has built on top of erlang to evolve in a similar way.

## OK, so what's the downside?

Elixir isn’t magic. There are a few reasons it may not be the right tech for your use case:
Not as fast as C or Java at cpu-intensive workloads
You probably don’t want to write your desktop app’s GUI in Elixir
The community of third-party libs is still small (but it’s growing!)
It’s relatively new, so hiring for “Elixir programmers” may be difficult

## What do I like about Elixir?

Elixir is a pleasure to use. It's functional, which makes testing, debugging, and concurrency [easier](http://www.defmacro.org/ramblings/fp.html). It has expressive, Ruby-like syntax, complete with the magical pipeline operator `|>` that reinforces the "pipeline of data" paradigm. 

It's also got a polished suite of language tools:

 * [mix] (http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html) -- a versatile build tool
 * [iex] (http://elixir-lang.org/docs/stable/iex/IEx.html) -- a super-powered repl that shows you documentation, loads your code, reloads your code, and autocompletes both Elixir and Erlang functions
 * [ExUnit] (http://elixir-lang.org/docs/stable/ex_unit/ExUnit.html) -- a test builtin test framework
 * [EEx] (http://elixir-lang.org/docs/stable/eex/EEx.html) -- a templating library
 * [Exrm] (https://github.com/bitwalker/exrm) -- a lib that allows you to trivially version and build your production release

Docs are a first-class citizen of the Elixir ecosystem, brought to you by [ExDoc](https://github.com/elixir-lang/ex_doc). If you've clicked any of the links above, you've noticed the beautiful and thorough documentation. Diving into the Elixir ecosystem is like unboxing something from Apple.

## What does Localytics like about Elixir?

We process about three billion data points a day, so our backend systems must be high-throughput, fault-tolerant, and always responsive. That's Erlang's bread-and-butter. The secret sauce to highly-available, distributed systems is the Open Telecom Platform. OTP is a library of abstractions that makes building such systems straightforward. Elixir wraps OTP and interops with the rest of the Erlang ecosystem with zero overhead. Elixir gives us all Erlang's battle-tested libraries, abstractions for writing concurrent code, and experience running in production.

We run several high-traffic Rails apps that require all the bells-and-whistles of any respectable production code.This includes background jobs, caches, multiple application servers, monitoring systems, etc. Elixir allows us to replace each piece of infrastructure with a single technology in a single repo using the Elixir concept of an "umbrella project". Since we're dealing with a single technology, it’s easier to debug and less code to manage. OTP makes it trivial to write code that not only alerts us when things go wrong, but restarts things from the last known good state. 

Elixir is also compatible with Erlang's mind-blowing `observer` tool, which allows detailed remote debugging wrapped in a GUI. If you're a dev who has ever had to jump through hoops to see what your app is doing, `:observer.start` will change your world.  There are also considerable performance gains. Phoenix is a lot faster than Rails, which means we can use cheaper hardware to support equivalent traffic.



## What's next?

It’s still early in our exploration of Elixir at Localytics, but the language has gone viral among our developers. We’re considering breaking up our monolithic backend into services and using channels in our web dashboard for real-time data feeds. As we ramp up, we're looking forward to watching and contributing to the budding Elixir community. If you're inclined, below are a few Elixir resources that should help you get started:

* http://elixir-lang.org/
* http://howistart.org/posts/elixir/1
* http://exercism.io/languages/elixir

