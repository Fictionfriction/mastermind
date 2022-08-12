class Game
  @@colors = ['red', 'blue', 'green', 'purple', 'orange', 'yellow']
  def initialize()
    @player = Player.new(self)
    @code = generate_code(@code)
    @score_keeper = 0
  end

  def generate_code(code)
    code = []
    4.times {code.append(@@colors.sample())}
    p code
  end
end

class Player
  def initialize(game)
    @game = game
    @guesses = 12
  end
end

test = Game.new