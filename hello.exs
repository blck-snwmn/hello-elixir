IO.puts("Hello world from Elixir")
l = ['a', 'b', 'c', 'd']
[h | t] = l
IO.puts(h)
IO.puts(t)
[a, b, c] = t
IO.puts(a)
IO.puts(b)
IO.puts(c)

x = fn
  x, y when x > 10 -> x + y * 10
  x, y -> x + y
end

IO.puts(x.(10, 20))
IO.puts(x.(11, 20))
IO.inspect(<<0::1, 0::1, 1::1, 1::1>>)
IO.inspect(<<3::4>>)
IO.puts(<<0::1, 0::1, 1::1, 1::1>> == <<3::4>>)
IO.inspect(String.split("1 2  3", " ", trim: true))

kl = [a: 2, b: "qaaa"] ++ [c: true]
IO.puts(kl[:a])
IO.puts(kl[:b])
IO.puts(kl[:c])

defmodule Fib do
  def f(n) when n > 1 do
    f(n - 1) + f(n - 2)
  end

  def f(1), do: 1

  def f(0), do: 0
end

IO.puts(Fib.f(10))

defmodule Sum do
  def list([head | tail], acc) do
    list(tail, head + acc)
  end

  def list([], acc) do
    acc
  end

  def list([head | tail]) do
    list(tail, head)
  end

  def list([]) do
    0
  end
end

IO.puts(Sum.list([10, 2, 1, 100]))
IO.puts(Sum.list([10]))
IO.puts(Sum.list([]))
IO.puts(Enum.reduce([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2, fn x, acc -> x + acc end))
IO.puts(Enum.reduce([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], fn x, acc -> x + acc end))
IO.inspect(Enum.map([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], fn x -> x + 2 end))

1..10_000 |> Enum.filter(&(&1 < 10)) |> IO.inspect() |> Sum.list() |> IO.puts()

