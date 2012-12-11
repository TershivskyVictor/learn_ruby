# Adds two parameters
def add(first_arg, second_arg)
  first_arg + second_arg
end

# Takes two parameters and subtracts the second from the first
def subtract(first_arg, second_arg)
  first_arg - second_arg
end

# Takes an array of parameters and adds them all together
def sum(values_array)
  values_array.inject(0) { |sum, value| sum += value }
end

# Multiplies two or more numbers together
def multiply(*all_args)
  all_args.inject(1) { |sum, value| sum *= value}
end

# Raises one number to the power of another number
def power(curr_value, to_power)
  curr_value**to_power
end

# The factorial of mumber (Use recursion)
def factorial(curr_value)
  curr_value > 1 ? curr_value * factorial(curr_value - 1) : 1
end