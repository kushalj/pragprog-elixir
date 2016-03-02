defmodule Chop do
	def guess(actual, a..b) do
		guess = div(a+b, 2)
		IO.puts "Is it #{guess}?"
		check_guess(actual, guess, a..b)
	end
	
	def check_guess(actual, actual, _) do
		IO.puts "Correct!"
	end
	
	def check_guess(actual, guess, _a..b) when guess < actual do
		guess(actual, (guess+1)..b)
	end

	def check_guess(actual, guess, a.._b) when guess > actual do
		guess(actual, a..(guess-1))
	end

	
end
