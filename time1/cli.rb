# encoding: UTF-8

require "./game"

class CLI

  class << self

    def start
      game = Game.new
      loop do
        puts game.render
        game.score += 10
        update_car_position(game)
        sleep 0.3
      end
    end

    def update_car_position(game)
      game.move_car_to(direction_for_key(read_char))
    end

    def read_char
      begin
        system("stty raw -echo")
        str = STDIN.getc
      ensure
        system("stty -raw echo")
      end
      str.chr
    end

    def direction_for_key(read_char) 
      c = read_char

      case c
      when "d"
        return :right
      when "a"
        return :left
      end
    end

  end

end

