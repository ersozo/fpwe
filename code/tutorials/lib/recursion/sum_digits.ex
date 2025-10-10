defmodule Tutorials.Recursion.SumDigits do
  # base condition
  def up_to(0), do: 0

  def up_to(num) do
    num + up_to(num - 1)
  end
end
