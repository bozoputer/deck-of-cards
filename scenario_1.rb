require './deck.rb'

puts <<~EOF

========== SCENARIO 1 =========
        Ready, Set, Draw
===============================
Draw a specified number of times

For each draw, display a message with the drawn card
e.g. You drew a 'K of clubs'

Begin!

EOF

# here's some code to help you get started
deck = Deck.new
deck.shuffle

def draw_n_times(deck, n)
  # prevent the user from drawing more than the deck has
  if n > 52
    puts "You can't draw more than 52 cards!\nPlease try again."
    return
  else
    n.times do
      puts "You drew a #{deck.draw}"
    end
  end
  if deck.cards.length > 1
    puts "You have #{deck.cards.length} cards left in the deck."
  else
    puts "You have #{deck.cards.length} card left in the deck."
  end
end

# get the number of cards to draw
print "How many cards would you like to draw?" + " "
user_input = gets.chomp.to_i

draw_n_times(deck, user_input)