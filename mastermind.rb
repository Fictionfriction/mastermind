class Game
  @@colors = ['red', 'blue', 'green', 'purple', 'orange', 'yellow']

  def self.colors
    @@colors
  end

  attr_reader :code

  def initialize()
    @player = Player.new(self)
    @code = generate_code(@code)
    @score_keeper = 0
  end

  private

  def generate_code(code)
    code = []
    4.times {code.append(@@colors.sample())}
    p code
  end

  def check_code(guesses)
    p guesses
    p self.code
  end

  public

  def play
    guesses = @player.guess
    check_code(guesses)
  end

end

class Player
  def initialize(game)
    @game = game
    @guesses = 12
  end

  def guess
    guesses = []
    count = 1
    while guesses.length < 4 do
      puts "Guess color #{count}!"
      color = gets.chomp
      if Game::colors.include? color.downcase 
        guesses.append(color)
        count += 1
      else
        puts "Not a valid color!"
      end
      p @game.code
    end
    return guesses
  end
end

test = Game.new
test.play