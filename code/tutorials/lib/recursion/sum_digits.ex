defmodule Tutorials.Recursion.SumDigits do
  # base condition
  def up_to(0), do: 0

  def up_to(num) do
    up_to_tail_recursive(num)
  end

  def up_to_tail_recursive(num, acc \\ 0)
  def up_to_tail_recursive(0, acc), do: acc

  def up_to_tail_recursive(num, acc) do
    up_to_tail_recursive(num - 1, acc + num)
  end
end
