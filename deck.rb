require './card.rb'

class Deck
  # a deck has 4 suits: Clubs Diamonds Hearts Spades
  # each suit has 13 ranks: 2 3 4 5 6 7 8 9 10, J, Q, K, A

  # create a new deck of cards
  def initialize
    # create an array of cards by combining the 4 suits with the 13 ranks
    cards = []
    suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
    ranks = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    suits.each do |suit|
      ranks.each do |rank|
        cards << Card.new(rank, suit).description
      end
    end
    @cards = cards
  end

  def draw
    # get the next card and remove it from the deck
    @cards.shift
  end

  def shuffle
    # return all cards to the deck, and randomize the order
    initialize
    @cards.shuffle
  end

  def cheat
    # see the next card, but don't discard it
  end
end

deck = Deck.new