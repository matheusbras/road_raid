# encoding: UTF-8

require "./game"
require 'timeout'

class CLI

  class << self

    def start
      @game = Game.new
      loop do
        process_frame
      end
    end

    def update_car_position
      @game.move_car_to(direction_for_key(read_with_timeout))
    end

    def read_with_timeout
      Timeout::timeout(0.5) do
        input = read_char
        if input == 'q'
          exit
        end
        return input
      end
      rescue Timeout::Error
        process_frame
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

    def direction_for_key(char) 
      case char
      when "d"
        return :right
      when "a"
        return :left
      end
    end

    def process_frame
      puts @game.render
      @game.score += 10
      update_car_position
      sleep 0.3
    end

  end

end

