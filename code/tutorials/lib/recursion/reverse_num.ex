defmodule Tutorials.Recursion.ReverseNum do
  # algorithm (123 -> 321)
  # num = 123
  # acc = 0
  # loop:
  #     new_num = 123 / 10 = 12
  #     new_acc = 0 * 10 + 123 % 10 = 3
  #     repeat till num becomes 0
  # return acc

  # function definition
  def of(num, acc \\ 0)
  # base case
  def of(0, acc), do: acc
  # recursive case
  def of(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    of(new_num, new_acc)
  end
end
