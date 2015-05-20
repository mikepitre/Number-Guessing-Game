class Guessing_Game

  def initialize
    number = rand(1..100)
    guesses_left = 5
  end

  puts "I'm thinking of a number between 1 and 100, want to try and guess it? (yes or no) > "
  response = gets.chomp.downcase
  if response == "yes"
    puts "Okay you've got 5 guesses, I'll let you know if you're too high or too low. What's your first guess? > "
    guess = gets.chomp.to_i


  def evaluate_guess
    if guess < number
      guesses_left -= 1
      puts "Too Low!"
    elsif guess > number
      puts "Too High!"
      guesses_left -= 1
    else
      puts "You got it! Isn't that the most exciting thing ever!?"
    end
  end
end
end
