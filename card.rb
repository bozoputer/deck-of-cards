class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def description
    # describe the card
    # e.g. A of spades
    "#{rank} of #{suit}"
  end
end