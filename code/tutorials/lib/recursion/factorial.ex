defmodule Tutorials.Recursion.Factorial do
  # base case
  def of(1), do: 1
  # regular recursive case
  def of(num), do: num * of(num - 1)

  # tail recursive
  # function definition
  def of_tail_rec(num, acc \\ 1)
  # base case
  def of_tail_rec(1, acc), do: acc
  # tail recursive case
  def of_tail_rec(num, acc), do: of_tail_rec(num - 1, acc * num)
end
