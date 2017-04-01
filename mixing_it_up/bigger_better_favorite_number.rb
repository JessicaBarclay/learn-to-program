# Bigger better favorite number


def better_num
  puts "What is your favorite number?"
  num = gets.chomp.to_i
  puts "No no, #{num}, is no good #{num+1} is much bigger and better"
end

better_num
