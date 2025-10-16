# Elixir is a functional programming language
# It is a dynamically typed language
# It is a compiled language
# It runs on the BEAM virtual machine (Erlang VM)
# It is designed for building scalable and maintainable applications and fault-tolerant systems
# It is a concurrent language
# It has a strong emphasis on immutability

# All data structures in Elixir are immutable, meaning they cannot be changed once created.
# This leads to safer and more predictable code.

# Immutability is a key concept in functional programming.
# transformation of data is done by creating new data structures rather than modifying existing ones.
# This is known as persistent data structures.

# Elixir has a rich set of data types including:
# Numbers (integers and floats)
# Atoms
# Strings
# Lists
# Tuples
# Maps
# Keyword Lists
# Binaries
# Functions
# PIDs (Process Identifiers)
# References
# Ports

# Elixir also has powerful pattern matching capabilities which allow for more expressive and concise code.
# Pattern matching is a mechanism for checking a value against a pattern.
# It is used in variable assignment, function arguments, and control flow.

# In functional programming, functions are first-class citizens.
# This means that functions can be passed as arguments to other functions, returned as values from other functions, and assigned to variables.

# Functions in Elixir are defined using the def keyword.
# Function names are usually written in snake_case.

# Modules are used to group related functions together.
# Modules can also contain documentation and metadata.
# Modules are defined using the defmodule keyword.

# All code in Elixir stays inside Modules
# As a general convention the module name and the file name should be the same.

defmodule Hello do
  # if function name has no parenthesis it means that function has no arguments.
  def world do
    IO.puts("Hello Elixir")
  end

  def world2(name) do
    # string interpolation
    IO.puts("Hello #{name}")
    # string concatenation
    IO.puts("Hello again " <> name)
  end
end

# last line inside of a function automatically returns. No need to write return keyword.

defmodule Module do
  def foo do
    # returns 1
    1
  end
end

# calling a function
# Hello.world()
Hello.world2("Ozgur")

# ----------------------------------------------------------------------------------
# running a script file:
# elixir <file_name>.exs

# compiling a script file:
# elixirc <file_name>.exs
# this will create a file named <file_name>.beam

# to run the compiled file:
# elixir <file_name>.beam

# to run the script file in interactive mode:
# iex <file_name>.exs
# this will load the file and open an interactive shell
# in the interactive shell you can call the functions defined in the file
# to compile and load the file in interactive mode:
# iex -S mix
# this will compile and load all the files in the current directory
# in the interactive shell you can call the functions defined in the files
# to exit the interactive shell type: exit() or press Ctrl + C twice

# ----------------------------------------------------------------------------------
# in IDE functions should be called with parenthesis even if they take no arguments
# for example: Hello.world()

# common practice is to use parenthesis when calling functions in IDE and no parenthesis in interactive shell if function do not take arguments

# in interactive shell functions can be called without parenthesis even if they take arguments
# for example: Hello.world2 "Ozgur"
# this is not a good practice but it is allowed in interactive shell

# ----------------------------------------------------------------------------------

# getting help in interactive shell:
# to get help in interactive shell type: h()
# to get help for a specific module type: h(ModuleName)
# to get help for a specific function type: h(ModuleName.function_name/arity)
# ----------------------------------------------------------------------------------

# to see the source code of a module type: s(ModuleName)
# to see the source code of a function type: s(ModuleName.function_name/arity)
# arity is the number of arguments a function takes
# for example: h(Enum.map/2) -> Enum is the module name, map is the function name, 2 is the arity
# if a function takes no arguments arity is 0

# in interactive shell i function (information) give explanation of data type
# name = "ozgur"
# i(name)
# i name
