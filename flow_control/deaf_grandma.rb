# deaf grandma


def deaf_grandma
  puts "HUH?"
  answer = gets.chomp
  while !answer.empty?
    exit if answer == "BYE"
    if answer == answer.upcase
      year_gen = rand(1930..1950)
      puts "NO, NOT SINCE #{year_gen}!"
      answer = gets.chomp
    else answer == answer.downcase
      puts "HUH?! SPEAK UP, SONNY!"
      answer = gets.chomp
    end
  end
end


deaf_grandma
