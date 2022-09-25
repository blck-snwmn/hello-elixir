IO.puts "Hello world from Elixir"
l = ['a','b','c','d']
[h | t] = l
IO.puts h
IO.puts t
[a,b,c] = t
IO.puts a
IO.puts b
IO.puts c
x = fn
    x, y when x > 10 -> x+y*10
    x, y -> x+y
  end
IO.puts x.(10 ,20)
IO.puts x.(11 ,20)
