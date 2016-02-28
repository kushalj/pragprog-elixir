fizzBuzz = fn

	0, 0, _ -> "FizzBuzz"
	0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
	_, _, n -> n	
		
end

f3 = fn n ->
	fizzBuzz.(rem(n,3), rem(n,5), n)
end


IO.puts fizzBuzz.(0, 1, 1)
IO.puts fizzBuzz.(1, 0, 1)
IO.puts fizzBuzz.(0, 0, 1)
IO.puts fizzBuzz.(1, 1, 1)

IO.puts f3.(10)
IO.puts f3.(11)
IO.puts f3.(12)
IO.puts f3.(13)
IO.puts f3.(14)
IO.puts f3.(15)
IO.puts f3.(16)






