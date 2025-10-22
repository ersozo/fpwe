defmodule Tutorials.Lists do
  @moduledoc """
  Function Summary:

  1. sum
  """

  @doc """
  Returns the sum of numbers in a list.
  """

  #   ------------------- Sum ---------------------------

  @spec sum(list(number())) :: number()
  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple(list(number())) :: number()
  def sum_simple([]), do: 0
  def sum_simple([h | t]), do: h + sum_simple(t)

  @spec sum_tail_rec(list(number()), integer()) :: number()
  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, h + acc)

  #   ------------------- Reverse ----------------------

  #   @spec reverse(list(any()), list(any())):: list(any())
  @spec reverse([any()], [any()]) :: [any()]
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])

  #   ------------------- Map --------------------------
  @spec map([any()], (any() -> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: reverse(acc)
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])

  # |> is the pipeline operator and it always passes the first argument to the function automatically.
  # let's say we have an anonymous function:
  # double = fn x -> x * 2 end
  # we can write:
  # [1, 2, 3, 4] |> Tutorials.Lists.map(double) |> Enum.reverse
  # [8, 6, 4, 2]
end
