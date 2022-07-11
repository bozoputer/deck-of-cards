require './deck.rb'

puts <<~EOF

========== SCENARIO 2 =========
          Cheat to Win
===============================
Keep drawing cards unless the next card is a face card (J, Q, K, A)

Begin!

EOF

deck = Deck.new
deck.shuffle

while deck.cards.length > 0
  card = deck.draw
  if card['J'] || card['Q'] || card['K'] || card['A']
    puts "You drew a #{card}. Sorry, no more draws."
    break
  else
    puts "You drew a #{card}"
  end
end
