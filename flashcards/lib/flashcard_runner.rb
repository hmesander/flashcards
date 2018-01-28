require './card.rb'
require './guess.rb'
require './deck.rb'
require './round.rb'
require 'pry'

card_1 = Card.new("What are baby beavers called?", "kittens")
card_2 = Card.new("What was the name of the first electronic general-purpose computer?", "eniac")
card_3 = Card.new("What famous musician was shot by Mark David Chapman in the year 1980?", "john lennon")
card_4 = Card.new("Pupusas, handmade thick stuffed corn tortillas, are a traditional dish from what country?", "el salvador")
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)


puts "Welcome! You're playing with #{deck.count} cards."
puts ""
puts "--------------------------------------------------"
puts ""

puts "This is card number #{round.current_card} out of #{deck.count}."
puts ""
puts "Question: #{card_1.question}"
user_guess = gets.chomp.downcase
user_guess = Guess.new("#{user_guess}", card_1)
round.record_guess(user_guess)
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.current_card} out of #{deck.count}."
puts ""
puts "Question: #{card_2.question}"
user_guess = gets.chomp.downcase
user_guess = Guess.new("#{user_guess}", card_2)
round.record_guess(user_guess)
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.current_card} out of #{deck.count}."
puts ""
puts "Question: #{card_3.question}"
user_guess = gets.chomp.downcase
user_guess = Guess.new("#{user_guess}", card_3)
round.record_guess(user_guess)
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.current_card} out of #{deck.count}."
puts ""
puts "Question: #{card_4.question}"
user_guess = gets.chomp.downcase
user_guess = Guess.new("#{user_guess}", card_4)
round.record_guess(user_guess)
puts ""
puts user_guess.feedback
puts ""

puts "****** Game over! ******"
puts ""
puts "You had #{round.number_correct} correct guesses out of #{round.guesses.count} for a score of #{round.percent_correct}%."
