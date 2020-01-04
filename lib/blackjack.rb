def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)

end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0
  2.times do
    total += deal_card
  end
  display_card_total(total)
  total
end

def hit?(currentTotal)
  # code hit? here
  # stayOrHit = ""
  # newTotal = 0 put back later to test
  prompt_user
  stayOrHit = get_user_input
  while stayOrHit != "s" && stayOrHit != "h"
      invalid_command
      prompt_user
      stayOrHit = get_user_input
  end
  if stayOrHit == "s"
    return currentTotal
  else
    newTotal = currentTotal
    newTotal += deal_card
    newTotal
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cardTotal = initial_round
  until cardTotal > 21
  cardTotal = hit?(cardTotal)
  display_card_total(cardTotal)
  end
  end_game(cardTotal)
end
