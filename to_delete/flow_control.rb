puts "Type your message:"
message = gets.chomp
if message[-1] == /["aeiou"]/
  puts "VOWEL!"
elsif message[-1] == "y"
  puts "DON'T KNOW"
else
  puts "CONSONANT!"
end

puts "You typed: #{message}"
