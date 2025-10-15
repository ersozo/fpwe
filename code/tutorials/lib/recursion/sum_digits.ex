defmodule Tutorials.Recursion.SumDigits do
  # base condition
  def upto(0), do: 0

  def upto(num) do
    upto_tail_recursive(num)
  end

  def upto_tail_recursive(num, acc \\ 0)
  def upto_tail_recursive(0, acc), do: acc

  def upto_tail_recursive(num, acc) do
    upto_tail_recursive(num - 1, acc + num)
  end
end
