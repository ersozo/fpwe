defmodule Tutorials.Recursion.PrintDigits do
  # Base case
  def upto(0), do: :ok

  #   # Tail Recursion (printing executed in ascending stage)
  #   def upto(num) do
  #     IO.puts(num)
  #     upto(num - 1)
  #   end

  # Head Recursion (printing executed in return stage)
  def upto(num) do
    upto(num - 1)
    IO.puts(num)
  end
end
