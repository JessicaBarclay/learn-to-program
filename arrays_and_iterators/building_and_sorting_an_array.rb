# building and sorting an array

def sort_array
  array = []
  puts "Give me a word!" ; word = gets.chomp.downcase.split
  array << word
    while !word.empty? do
      puts "Give me a word!" ; word = gets.chomp.downcase.split
      array << word
    end
  puts array.sort
end

sort_array
