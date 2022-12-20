require 'pry'
VALID_CHOICES = %w[Rock Paper Scissors Lizard Spock]
VALID_ABBREVIATIONS = %w[R P SC L SP]

OUTCOMES = { 'Rock' => ['Scissors', 'Lizard'], 'Paper' => ['Rock', 'Spock'],
             'Scissors' => ['Paper', 'Lizard'], 'Lizard' => ['Spock', 'Paper'],
             'Spock' => ['Rock', 'Scissors'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def choice_format(choice)
  if choice.start_with?('r')
    choice = 'Rock'
  elsif choice.start_with?('p')
    choice = 'Paper'
  elsif choice.start_with?('sc')
    choice = 'Scissors'
  elsif choice.start_with?('l')
    choice = 'Lizard'
  elsif choice.start_with?('sp')
    choice = 'Spock'
  end
end

def win?(first, second)
  OUTCOMES.fetch(first).include?(second)
end

def display_results(player_choice, computer_choice)
  if win?(player_choice, computer_choice)
    prompt("You won!")
  elsif win?(computer_choice, player_choice)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def keep_score(player_choice, computer_choice, player_score, computer_score)
  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end
end

loop do
  player_score = 0
  computer_score = 0
  player_choice = ''
  computer_choice = VALID_CHOICES.sample

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} or #{VALID_ABBREVIATIONS.join(', ')}")
    player_choice = choice_format(Kernel.gets().chomp().downcase)
    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  prompt("you chose: #{player_choice}; Computer chose: #{computer_choice}")

  display_results(player_choice, computer_choice)

  keep_score(player_choice, computer_choice, player_score, computer_score)
  prompt("The current score is: Player - #{player_score}, Computer - #{computer_score}")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
