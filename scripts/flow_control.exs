# --------------------------------------------
# Flow Control
# --------------------------------------------

# in elixir recursion is used for creating loops usually,
# but other than recursion there are some mechanisms:

# Case
# a case statement acts like a switch statement
list = [1, 2, 3]

case Enum.at(list, 2) do
  1 -> "this won't print"
  3 -> "3 is a match!"
  _ -> "catch all"
end

# "3 is a match!"

defmodule Post do
  defstruct(
    id: nil,
    title: "",
    description: "",
    author: ""
  )
end

post1 = %Post{id: 1, title: "Title No 1", author: "Julius Ceaser"}

case post1 do
  %{author: "Ali"} -> "Got a post from Ali"
  %{author: "Veli"} -> "Got a post from Veli"
  _ -> "Got a post from #{post1.author}"
end

# "Got a post from Julius Ceaser"

# Cond
# cond statement does not take any expression
# in do-end block several pattern matching statements are written.

cond do
  post1.author == "Ali" -> "Editing a post from Ali"
  post1.author == "Veli" -> "Editing a post from Veli"
  true -> "This is a catch all"
end

# "Editing a post from Ali"

cond do
  hd(list) == 1 -> "Got a 1"
  true -> "Head is #{hd(list)}"
end

# "Got a 1"

# normally it is not used if/else block for flow control, instead recursion and pattern matching used.

# if/else
if true do
  "This will work"
else
  "Else this will work"
end

# "This will work"
