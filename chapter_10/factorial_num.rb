# In mathematics, the factorial of a non-negative integer n, denoted by n!,
# is the product of all positive integers less than or equal to n.
# For example, 5! = 5 × 4 × 3 × 2 × 1 = 120

# factorial of 0! is 1


def factorial(num)
  return "You can\'t take the factorial of a negative number!" if num < 0

  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(-3)
puts factorial(3)
puts factorial(30)
