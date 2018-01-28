require './card.rb'
require './guess.rb'
require './deck.rb'
require './round.rb'
require './cardgenerator.rb'
require 'pry'

filename = "cards.txt"
cards = CardGenerator.new(filename).cards

deck = Deck.new(cards)
round = Round.new(deck)


puts "Welcome! You're playing with #{deck.count} cards."
puts ""
puts "--------------------------------------------------"
puts ""

puts "This is card number #{round.guesses.count + 1} out of #{deck.count}."
puts ""
puts "Question: #{deck.cards[0].question}"
user_guess = gets.chomp.downcase
round.record_guess(user_guess)
user_guess = Guess.new(user_guess, deck.cards[0])
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.guesses.count + 1} out of #{deck.count}."
puts ""
puts "Question: #{deck.cards[1].question}"
user_guess = gets.chomp.downcase
round.record_guess(user_guess)
user_guess = Guess.new(user_guess, deck.cards[1])
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.guesses.count + 1} out of #{deck.count}."
puts ""
puts "Question: #{deck.cards[2].question}"
user_guess = gets.chomp.downcase
round.record_guess(user_guess)
user_guess = Guess.new(user_guess, deck.cards[2])
puts ""
puts user_guess.feedback
puts ""

puts "This is card number #{round.guesses.count + 1} out of #{deck.count}."
puts ""
puts "Question: #{deck.cards[3].question}"
user_guess = gets.chomp.downcase
round.record_guess(user_guess)
user_guess = Guess.new(user_guess, deck.cards[3])
puts ""
puts user_guess.feedback
puts ""

puts "****** Game over! ******"
puts ""
puts "You had #{round.number_correct} correct guesses out of #{round.guesses.count} for a score of #{round.percent_correct}%."
