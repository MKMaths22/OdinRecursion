# frozen_string_literal: true

# Firstly I write methods, iterative and recursive, which when given a positive integer
# return an array with that many Fibonacci numbers starting from 0 and 1
module Fibonacci
  def fibs(num)
    return input_error(num) if input_error(num)

    output = [0, 1]
    return [0] if num < 2

    output.push(output[-1] + output[-2]) until output.size >= num
    output
  end

  def input_error(num)
    'Input not a positive number' unless num.is_a?(Integer) && num.positive?
  end

  def fibs_rec(num)
    return input_error(num) if input_error(num)

    output = [0, 1]
    return output.slice(0, num) if num <= 2

    previous = fibs_rec(num - 1)
    previous.concat([previous[-1] + previous[-2]])
  end
  # if we say fibs_rec(n - 1).concat([fibs_rec(n - 1)[-1] + fibs_rec(n - 1)[- 2]])
  # that reduces the number of lines of fibs_rec BUT then the previous array
  # is being calculated three times by Ruby, which is extremely slow!
  # coding the recursion to depend only on the previous case, not the previous 2 cases
  # should be exponentially faster to run.
end

include Fibonacci

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
# p fibs_rec(-3)
# p fibs_rec('string')
# returns the error message

# p fibs_rec(1)
# returns [0]
# p fibs_rec(2)
# returns [0, 1]
# p fibs_rec(20)
# returns [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1587, 2584, 4181]
