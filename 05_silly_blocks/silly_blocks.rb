def reverser
  yield.split(' ').collect! { |word| word.reverse}.join(" ")
end

def adder(arg = 1)
  yield + arg
end

def repeater(repeats = 1)
  repeats.times { yield }
end