require 'pry'

def welcome
 puts "Welcome to the Blackjack Table" 
end

def deal_card
  your_card = rand(1..11)
   your_card
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
   
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  total = deal_card
  if deal_card < 21
    
    total += deal_card 
    display_card_total(total)
  end
  return total
end


def hit?(total)
prompt_user
input = get_user_input
until input == 'h' or input == 's'
 invalid_command
  prompt_user
  input = get_user_input
end
if input == 'h'
 total += deal_card
 else if input == 's'
  return total
 end
 
 return total
 end
end

def invalid_command
  puts "Please enter a valid command" 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = initial_round
  welcome
  while total < 21
  hit?(total)
  total += deal_card
  display_card_total(total)
end_game(total)
end
end
    
