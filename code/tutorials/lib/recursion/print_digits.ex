defmodule Tutorials.Recursion.PrintDigits do
  # Base case
  def up_to(0), do: :ok

  #   # Tail Recursion (printing executed in ascending stage)
  #   def up_to(num) do
  #     IO.puts(num)
  #     up_to(num - 1)
  #   end

  # Head Recursion (printing executed in return stage)
  def up_to(num) do
    up_to(num - 1)
    IO.puts(num)
  end
end
