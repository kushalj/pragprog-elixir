defmodule MyList do
	def sum(list), do: _sum(list, 0)

	defp _sum([], total), do: total

	defp _sum([ head | tail ], total), do: _sum( tail, head+total )


	def reduce([], value, _) do
		value
	end

	def reduce([ head | tail ], value, func) do
		reduce(tail, func.(head, value), func)
	end

	def mapsum([], _), do: 0
	def mapsum([head | tail], func) do
		func.(head) + mapsum(tail, func)
	end

	def max([x]), do: x
	def max(list), do: _max(list, 0)

	defp _max([x], y) when x > y, do: x
	defp _max([x], y), do: y
	defp _max([head | tail], value) when head > value do
		_max(tail, head)
	end
	defp _max([head | tail], value), do: _max(tail, value)

end
