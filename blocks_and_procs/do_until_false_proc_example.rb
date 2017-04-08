def do_until_false (first_input, some_proc)
  input = first_input
  output = first_input

  while output
    input = output
    output = some_proc.call input
  end

  input
end

build_array_of_squares = Proc.new do |array|
    last_number = array.last
    if last_number <= 0
      false
    else
      array.pop # take one off the end
      array.push last_number*last_number # replace with its square
      array.push last_number-1 # followed by the next smaller num
    end
  end

always_false = Proc.new do |ignore|
  false
end

puts do_until_false([5], build_array_of_squares).inspect

yum = "lemonade with a hint of orange blossom water"
puts do_until_false(yum, always_false)
