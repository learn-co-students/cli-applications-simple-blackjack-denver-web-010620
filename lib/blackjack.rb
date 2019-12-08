def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(card)
  20.times do 
      card = deal_card
      card > 0
      card < 12
end

def display_card_total(card_total)
  card_total = sum(deal_card1 + deal_card2)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input(user_input)
  gets.chomp(user_input)
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
end

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
