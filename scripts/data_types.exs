# ------------------------------------------------------------------
# Atom
# ------------------------------------------------------------------
# In elixir an atom is the data type which its name is equal to its value
# it starts with semicolon (:atom). If there is a space then double quotes are used:
# :space_need
# or
# :"space need"

# in elixir atoms are used frequently, especially in pattern matching
{:error, reason} = {:error, "file is not exist"}
{:ok, msg} = {:ok, "status 200 ok"}

# boolean values true and false are also atoms
# true  # :true
# false # :false

# ------------------------------------------------------------------
# String
# ------------------------------------------------------------------
# for strings, double quotes are used.
# strings in elixir are saved as collection of bytes (BitString)
# i("hello")
# <<104, 101, 108, 108, 111>>
# this is the raw string representation of "hello"

# the code point of "A"
# ?A
# 65

# ------------------------------------------------------------------
# Charlist
# ------------------------------------------------------------------
# for character lists, single quotes with sigil syntax are used (after elixir 1.15)

# iex(15)> is_binary("hello")
# true
# iex(16)> is_binary(~c"hello")
# false
# iex(17)> is_list(~c"hello")
# true
# iex(18)> is_list("hello")
# false

# ------------------------------------------------------------------
# Process
# ------------------------------------------------------------------
# in elixir codes are executed in processes.
# each process is self a isolated environment and its own stack/heap allocations.
# process is also a valid data type in elixir. It has an attribute PID.
# self() function returns PID of the current process.
# my_pid = self()
# #PID<0.123.0>

# ------------------------------------------------------------------
# List
# ------------------------------------------------------------------
# in elixir list is a singly linked list. It is unlike the regular list in other programming languages
# which is actually "dynamic array" stored in contiguous memory.
# linked lists are recursive in nature.
# my_list = ["a", "b", "c"]
# elements of a list can be retrieved by Enum module:
# Enum.at(my_list, 1)
# "b"

# h Enum.at
# function definition:
# def at(enumerable, index, default // nil)

# // denotes that the argument named default is optional and here its default value is nil.
# It means that if this argument is not specified then the default value of this argument will be nil.
iex(9) > Enum.at([1, 2, 3, 4, 5], 3)
# 4
iex(11) > Enum.at([1, 2, 3, 4, 5], 6)
# nil
iex(10) > Enum.at([1, 2, 3, 4, 5], 6, :none)
# :none

# pattern matching with lists
[a, b, c] = ["a", "b", "c"]
# a = "a"
# b = "b"
# c = "c"

# head/tail pattern matching using cons operator (|) also known as pipe operator
[head | tail] = [1, 2, 3, 4, 5]
# head = 1
# tail = [2, 3, 4, 5]
# head is the first element of the list
# tail is the rest of the list
# tail is also a list
# head/tail pattern matching can be used in function arguments
# for example:
def process_list([head | tail]) do
  IO.puts("Head: #{head}")
  IO.puts("Tail: #{inspect(tail)}")
end

# ------------------------------------------------------------------
# Tuple
# ------------------------------------------------------------------
# in elixir tuple is a collection of values which are stored in contiguous places in memory (like arrays in other programming languages).

# tuples are more efficient than lists for storing a fixed number of elements.
# but when you need to add or remove elements from a collection, lists are more efficient than tuples,
# because tuples need to be copied to a new memory location when they are modified.

# also when you store a large number of elements in a tuple, it can be inefficient because the entire tuple needs to be copied to a new memory location when it is modified.
# so tuples are used for storing a small number of elements, and lists are used for storing a large number of elements or when you need to add/remove elements frequently.

# curly braces are used for tuples
# my_tuple = {1, 2, 3}

# tuples are used frequently in elixir for returning multiple values from a function
# my_tuple = {:ok, "file is exist", 200}
# {:ok, msg, status} = my_tuple
# msg = "file is exist"
# status = 200

{:reply, msg, state} = {:reply, "user found!", ["Ali", "Veli", "Ozgur"]}
msg = "user found!"
state = ["Ali", "Veli", "Ozgur"]
# ------------------------------------------------------------------
# Keyword List
# ------------------------------------------------------------------
# keyword list is a special kind of list in elixir.
# They are used frequently for passing options to functions.
# a keyword list is a key value pair,
# but actually it is a list of tuples where the first element of each tuple is an atom (the key) and the second element is the value.

[{:name, "Ozgur"}, {:age, 30}, {:city, "Istanbul"}] = [name: "Ozgur", age: 30, city: "Istanbul"]

# because of pattern matching capabilities of elixir,
# the above two keyword lists are equivalent:
# so we can write keyword lists in a more concise way:

# my_kw_list = [name: "Ozgur", age: 30, city: "Istanbul"]
# my_kw_list = [{:name, "Ozgur"}, {:age, 30}, {:city, "Istanbul"}]

# both are same
# you can retrieve the value of a key using Keyword module
# Keyword.get(my_kw_list, :name)
# "Ozgur"

# also you can use the key as an index
# my_kw_list[:name]
# "Ozgur"

# keys in a keyword list are unique
# values can be any data type
# my_kw_list = [name: "Ozgur", age: 30, city: "Istanbul", age: 31]

# this is valid but the key :age is duplicated
# so when you retrieve the value of a key, only the last value is returned
# Keyword.get(my_kw_list, :age)
# 31
# ------------------------------------------------------------------
# Map
# ------------------------------------------------------------------
# map is a collection of key value pairs
# keys can be any data type (not only atoms like keyword lists) and values can be any data type
# using %{} syntax for maps
# maps are like dictionaries in python

# my_map = %{"name" => "Ozgur", "age" => 30} # string keys
# my_map = %{:name => "Ozgur", :age => 30} # atom keys (longer syntax
# my_map = %{name: "Ozgur", age: 30} # atom keys (shorter syntax)

# pattern matching with maps
# %{name: a, age: b} = my_map
# a = "Ozgur"
# b = 30

# no need to specify all keys in the map
# for example:
# %{age: b} = my_map
# b = 30

# retrieving the value of a key using map[key] syntax
# my_map[:name]
# "Ozgur"

# retrieving the value of a key using Map module
# Map.get(my_map, :age)
# 30

# retrieving the value of a key using dot notation (only for atom keys)
# my_map.name
# "Ozgur"

# adding a new key value pair to a map (returns a new map)
# new_map = Map.put(my_map, :city, "Istanbul")
# new_map = %{my_map | city: "Istanbul"} # this syntax only works if the key already exists in the map
# %{name: "Ozgur", age: 30, city: "Istanbul"}

# updating the value of a key in a map (returns a new map)
# my_map = %{name: "Ozgur", age: 30}
# updated_map = Map.put(my_map, :name, "Ali") # or
# updated_map = %{my_map | name: "Ali"} # this syntax only works if the key already exists in the map
# %{name: "Ali", age: 30}

# ------------------------------------------------------------------
# Struct
# ------------------------------------------------------------------
# struct is a special kind of map in elixir.
# it is used for defining custom data types.
# struct is defined using defstruct keyword inside a module.
# struct has a fixed set of keys (fields) and default values for those keys.
# fields can be also list of atoms.
# struct provides compile time checks for the keys.
# struct is like a class in object oriented programming languages.

defmodule User do
  defstruct name: "", age: nil, city: ""
end

# creating a new struct
# user1 = %User{name: "Ali", age: 25}
# user2 = %User{name: "Veli", age: 30, city: "Ankara"}
