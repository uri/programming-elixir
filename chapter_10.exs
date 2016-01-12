defmodule MyList do
  def all?([a, b]) do
    a == b
  end
  def all?([a, b | t]) do
    a ==b && all?([b | t])
  end

  def each([h], func), do: func.(h)
  def each([h | t], func) do
    func.(h)
    each(t, func)
  end

  def filter([h], func) do
    if func.(h) do
      [ h ]
    else
      []
    end
  end
  def filter([ h | t ], func) do
    if func.(h) do
      [ h | filter(t, func) ]
    else
      filter(t, func)
    end
  end

  def split( list, pos ) do
    h = take(list, pos)
    t = list -- h
    [ h, t ]
  end

  def take( [ h | t ], 0 ), do: []
  def take( [], 0 ), do: []
  def take( [], t ), do: []
  def take( [ h | t ], count ) do
    [ h | take(t, count - 1) ]
  end
end
