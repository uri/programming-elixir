defmodule MyList do
  def sum([e]), do: e
  def sum([head | tail]) do
    head + sum(tail)
  end


  # Takes a list of numbers, applies a function and then sums them
  def mapsum([h], func), do: func.(h)
  def mapsum([h | t], func) do
    func.(h) + mapsum(t, func)
  end

  # Find the largest element in list
  def my_max([h]), do: h
  def my_max(list) do
    my_max(0, list)
  end

  defp my_max(largest, []), do: largest
  defp my_max(largest, [h | t]) when h > largest do
    my_max(h, t)
  end

  defp my_max(largest, [h | t]) when h < largest do
    my_max(largest, t)
  end

  def caesar([h | t], n) do
    _caesar([h | t], n, [])
  end

  defp _caesar([h], n, new_list), do: [ _calculate_caesar([h], n) | new_list]
  defp _caesar([h | t], n, new_list) do
    new_val = _calculate_caesar([h], n)
    _caesar(t, n, [ new_val | new_list ])
  end

  defp _calculate_caesar([h], n) when h + n > 122, do: rem(h + n, 122) + 96
  defp _calculate_caesar([h], n) when h + n <= 122, do: h + n
end
