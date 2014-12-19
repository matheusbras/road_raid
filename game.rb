# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game

  def initialize
  end

  def screen
    if @left
      ["     ",
       "     ",
       "     ",
       "     ",
       " A   "].join("\n")
    elsif @right
      ["     ",
       "     ",
       "     ",
       "     ",
       "  A  "].join("\n")
    else
      ["     ",
       "     ",
       "     ",
       "     ",
       "  A  "].join("\n")
    end
  end

  def move_left
    @left = true
  end

  def move_right
    @left = false
    @right = true
  end
end


