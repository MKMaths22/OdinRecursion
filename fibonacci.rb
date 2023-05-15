# Firstly I write methods, iterative and recursive, which when given a positive integer
# return an array with that many Fibonacci numbers starting from 0 and 1
module Fibonacci
  def fibs(num)
    return 'Input not a positive number' unless num.kind_of?(Integer) && num > 0
    output = [0, 1]
    return [0] if num < 2
    output.push(output[-1] + output[-2]) until output.size >= num
    output
  end

# Testing Below

# p fibs(-3)
# p fibs ('string')
# returns the error message
# p fibs(20)
# returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1587, 2584, 4181]
# p fibs(1)
# returns [0]
# p fibs(2)
# returns [0, 1]

end
