## Localytics <3 Elixir

Ian Asaff
Senior Engineer

A coworker and I just got back from ElixirConf and we are pumped. We heard talks on distributed computing, self-healing architectures, embedded systems, and web development. The things people are doing with Elixir is incredible. The last time I saw this much enthusiasm for new tech was back when the Ruby and Rails rocket was preparing to launch.

## What is it?
So what exactly is Elixir? It's a programming language that runs on the Erlang virtual machine. Jose Valim, Elixir's creator, famously said that when he looked at Erlang, "I loved what I saw, but hated what I didn't see." So he built a language that has all of Erlang's strengths, plus more--macros, a nicer syntax, and a mature toolchain. What's Erlang? It's a language that's been around since 1986 and open-sourced in 1998. It's known for powering telecommunications systems that require virtually 100% uptime. Elixir is Erlang with more strengths and fewer weaknesses.

## So is Erlang only for telco stuff?
Nope! Erlang was created to build distributed, concurrent, fault-tolerant systems. In English, that means fast, responsive, and reliable. Telecom systems fit into that bucket, but so do messaging systems, high velocity/volume big-data systems, web applications, and any other system that runs on multiple nodes and requires high throughput. For example, [Phoenix] (http://www.phoenixframework.org/) is an Elixir web framework that is gaining serious traction. It's being touted as the next-generation replacement for Rails, complete with an elegant orm called [ecto](https://github.com/elixir-lang/ecto). It supports websockets out of the box and was measured to be 15x faster than Rails (https://gist.github.com/omnibs/e5e72b31e6bd25caf39a) in benchmarks. Disimissing Elixir because of Erlang's telco roots is misguided--it's like dismissing Nodejs because javascript was originally built to run in the browser.

## What do I like about Elixir?
Elixir is a pleasure to use. It's functional, which makes testing, debugginer, and concurrency easier. It has expressive, Ruby-like syntax, complete with the magical pipeline operator `|>` that reinforces the "pipeline of data" paradigm. It's also got a polished suite of language tools:

 * [mix] (http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html) -- a versatile build tool
 * [iex] (http://elixir-lang.org/docs/stable/iex/IEx.html) -- a super-powered repl that shows you documentation, loads your code, reloads your code, and autocompletes both Elixir and Erlang functions
 * [ExUnit] (http://elixir-lang.org/docs/stable/ex_unit/ExUnit.html) -- a test builtin test framework
 * [EEx] (http://elixir-lang.org/docs/stable/eex/EEx.html) -- a templating library
 * [Exrm] (https://github.com/bitwalker/exrm) -- a lib that allows you to trivially version and build your production release

And, if you've clicked any of those links, you've noticed the beautiful and thorough documentation. Docs are a first-class citizen of the Elixir ecosystem, brought to you by [ExDoc](https://github.com/elixir-lang/ex_doc). Diving into the Elixir ecosystem is like unboxing something from Apple.

## What does Localytics like about Elixir?
We process about three billion data points a day, so our backend systems must be rock solid--high-throughput, fault-tolerant, and always responsive. That's Erlang's bread-and-butter. The secret sauce to highly-available, distributed systems is OTP, a library of abstractions that makes building such systems straightforward. Elixir wraps OTP and interops with the rest of the Erlang ecosystem with zero overhead. With Elixir we get all of Erlang's battle-tested libraries, abstractions for writing concurrent code, and experience running in production, combined with Elixir's toolchain and productive syntax.

On our front-end, we run several high-traffic Rails apps, which involve all the bells-and-whistles required for any respectable production Rails app--background jobs, caches, multiple beefy application servers, monitoring systems, etc. Using Elixir, we can replace each separate piece of infrastructure with a single technology in a single repo using the Elixir concept of an "umbrella project". It'd be less code to manage, easier to debug, and less cognitive overhead since we're dealing with a single technology. We'd benefit from OTP here as well. OTP supervisors makes it trivial to write code that not only alerts us when things go wrong, but restarts things from the last known good state. Elixir is also fully compatible with Erlang's mind-blowing `observer` tool, which allows incredibly detailed remote debugging wrapped in a GUI. If you're a dev who has ever had to jump through hoops to see what your app is doing, `:observer.start` will change your world. As mentioned earlier, there are also performance gains to consider--Phoenix is a lot faster than Rails, which means we can use cheaper hardware to support equivalent traffic.

## OK, so what's the downside?
Elixir is not a silver bullet. Though it's at the top of the list for throughput-sensitive workloads, it's not a great fit for computation-intensive stuff or GUI applications. Though Elixir can leverage the entire Erlang ecosystem, the community of third-party Elixir libraries is still new and growing.

## What's next?
We're still early in our exploration of Elixir at Localytics, but the language has gone viral among our developers. The possibilities are exciting and as we ramp up, we're looking forward to watching and contributing to the budding Elixir community. If you're inclined, below are a few Elixir resources that should help you get started:

* http://elixir-lang.org/
* http://howistart.org/posts/elixir/1
* http://exercism.io/languages/elixir
