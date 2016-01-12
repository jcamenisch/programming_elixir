defmodule ListsAndRecursion do
  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end


  def mapsum([], _func), do: 0

  def mapsum([head | tail], func) do
    _mapsum(tail, func.(head), func)
  end

  defp _mapsum([], value, _func), do: value

  defp _mapsum([head | tail], value, func) do
    _mapsum(tail, value + func.(head), func)
  end

  # Just for fun while I'm thinking about it
  def join(_list, sep \\ " ")

  def join([], _), do: ""

  def join([head | []], _) do
    head
  end

  def join([head | tail], sep) do
    head <> sep <> join(tail)
  end
end
