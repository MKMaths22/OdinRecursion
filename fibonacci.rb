# Firstly I write methods, iterative and recursive, which when given a positive integer
# return an array with that many Fibonacci numbers starting from 0 and 1

def fibs(num)
    return 'Input not a positive number' unless num.kind_of?(Integer) && num > 0
    output = [0, 1]
    return [0] if num < 2
    output.push(output[-1] + output[-2]) until output.size >= num
    output
end

p fibs(-3)