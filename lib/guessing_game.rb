class Guessing_game

  def initialize
    @number = rand(1..100)
    @guesses_left = 5
    @previous_guesses = []
  end


  def start
    welcome
    evaluate_guess
  end


  def welcome
    puts "I'm thinking of a number 1-100, try and guess it. You've got 5 guesses before you lose."
  end


  def evaluate_guess
    guess = gets.chomp.to_i
    if @previous_guesses.include?(guess)
      puts "It's still not #{guess} since last time you guessed that. Give me a new number."
      evaluate_guess
    elsif (guess < 1) || (guess > 100)
      puts "I need a number 1-100. Try again."
      evaluate_guess
    elsif (@guesses_left == 1) && (guess != @number)
      puts "You're out of guesses! It was #{@number}!"
      play_again?
    elsif guess < @number
      @guesses_left -= 1
      @previous_guesses << guess
      puts "#{guess} is too Low!"
      ask_for_guess
      evaluate_guess
    elsif guess > @number
      @guesses_left -= 1
      @previous_guesses << guess
      puts "#{guess} is too High!"
      ask_for_guess
      evaluate_guess
    elsif guess == @number
      puts "You got it! Isn't that the most exciting thing ever!?"
      play_again?
    end
  end

  def ask_for_guess
    puts "You have #{@guesses_left} guesses left. Try again."
  end

  def play_again?
    puts "Would you like to play again? (yes or no)"
    response = gets.chomp.downcase
    if response == "yes"
      game = Guessing_game.new
      game.start
    else
      puts "Thanks for playing this riveting game!"
    end
  end
end

game = Guessing_game.new
game.start
