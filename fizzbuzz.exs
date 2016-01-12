fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

IO.puts fb.(0,0,1)
IO.puts fb.(0,1,1)
IO.puts fb.(1,0,1)
IO.puts "----"

fbrem = fn
  n -> fb.( rem(n,3), rem(n,5), n)
end

IO.puts fbrem.(10)
IO.puts fbrem.(11)
IO.puts fbrem.(12)
IO.puts fbrem.(13)
IO.puts fbrem.(14)
IO.puts fbrem.(15)
IO.puts fbrem.(16)
IO.puts "----"

# Page 39
prefix_fn = fn prefix ->
  fn str -> "#{prefix} #{str}" end
end

mrs = prefix_fn.("Mrs")
lotr = prefix_fn.("Lord of the Rings:")
IO.puts mrs.("Uri")
IO.puts mrs.("Taylor")
IO.puts lotr.("The Fellowship of the Ring")
IO.puts lotr.("The Two Towers")
IO.puts lotr.("Return of the King")
IO.puts "----"

# Page 42
IO.puts Enum.map [1,2,3,4], &(&1 + 2)
