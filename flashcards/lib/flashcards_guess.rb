require '../lib/flashcards_card.rb'

class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card   = card
  end

  def card
    @card.inspect
  end

  def correct?
    puts @card.question
    user_guess = gets.chomp
    if user_guess == @card.answer
      puts "true"
    else
      puts "false"
    end
  end

  def feedback
    puts @card.question
    user_guess = gets.chomp
    if user_guess == @card.answer
     puts "Correct!"
    else
      puts "Incorrect!"
    end
  end

end

card = Card.new("What is the capital of Alaska?", "Juneau")
guess = Guess.new("Juneau", card)
puts guess.card
puts guess.response
guess.correct?
guess.feedback

card = Card.new("Which planet is closest to the sun?", "Mercury")
guess = Guess.new("Saturn", card)
puts guess.card
puts guess.response
guess.correct?
guess.feedback
