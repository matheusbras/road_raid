# encoding: UTF-8

require "./game"
require 'timeout'

def start
  @game = Game.new
  loop do
    process_frame
  end
end

def update_car_position
  char = read_with_timeout
  case char
  when "d"
    @game.move_right
  when "a"
    @game.move_left
  end
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

def process_frame
  # @game.pass
  puts @game.screen
  update_car_position
  sleep 0.3
end

start
