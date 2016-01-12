defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(double n)
  def sextuple(n), do: double(triple n)
end

defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 1 do
    n * of(n - 1)
  end
end

defmodule Chop do
  def guess(actual, low..high) do
    half = div(low + high, 2)
    IO.puts "Is it #{half}?"

    (fn
      (n) when n == actual -> actual
      (n) when n  > actual -> guess(actual, low..n)
      (n) when n  < actual -> guess(actual, n..high)
    end).(half)
  end
end
