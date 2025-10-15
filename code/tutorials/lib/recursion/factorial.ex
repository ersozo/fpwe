defmodule Tutorials.Recursion.Factorial do
  # base case
  def fact(1), do: 1
  # regular recursive case
  def fact(num), do: num * fact(num - 1)

  # tail recursive
  # function definition
  def fact_tail_rec(num, acc \\ 1)
  # base case
  def fact_tail_rec(1, acc), do: acc
  # tail recursive case
  def fact_tail_rec(num, acc), do: fact_tail_rec(num - 1, acc * num)
end
