defmodule ListsAndRecursion do
  def mapsum([], _func) do
    0
  end

  def mapsum([head | tail], func) do
    _mapsum(tail, func.(head), func)
  end

  defp _mapsum([], value, _func) do
    value
  end

  defp _mapsum([head | tail], value, func) do
    _mapsum(tail, value + func.(head), func)
  end
end
