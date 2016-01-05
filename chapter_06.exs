defmodule Chop do
  def guess target, low..high do
    do_guess target, div(high , 2), low..high
  end

  defp do_guess(x, x, _), do: IO.puts "It's #{x}!"
  defp do_guess(target, guess, low.._) when guess > target do
    print_guess guess
    new_high = guess - 1
    new_guess = div(new_high + low, 2)
    do_guess target, new_guess, low..new_high
  end

  defp do_guess(target, guess, _..high) when guess < target do
    print_guess guess
    new_low = guess + 1
    new_guess = div(new_low + high, 2)
    do_guess target, new_guess, new_low..high
  end

  defp print_guess(guess) do
    IO.puts "Is it #{guess}..."
  end
end
