defmodule Tutorials.Recursion.Factorial do
  # base condition
  def fact(0), do: 1

  def fact(num) do
    num * fact(num - 1)
  end
end
