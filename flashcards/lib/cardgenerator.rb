require 'pry'
require '../lib/card.rb'

class CardGenerator
  attr_reader  :cards

  def initialize(filename)
    f = File.open(filename, 'r')
    @cards = f.each_line.map do |card|
      card_details = card.strip.split(',')
      Card.new(card_details[0], card_details[1])
    end
    f.close
 end

end
