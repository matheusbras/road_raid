require './game'
require 'minitest/autorun'

describe "The game works" do
  before do
    @game = Game.new
  end


  it "initial state" do
    screen "     ",
           "     ",
           "     ",
           "     ",
           "  A  "
  end

  it "move the car" do
    game.move_left
    screen "     ",
           "     ",
           "     ",
           "     ",
           " A   "

    game.move_right
    screen"     ",
          "     ",
          "     ",
          "     ",
          "  A  "

    game.move_right
    screen"     ",
          "     ",
          "     ",
          "     ",
          "   A "

    game.move_right
    screen"     ",
          "     ",
          "     ",
          "     ",
          "    A"

    game.move_right
    screen"     ",
          "     ",
          "     ",
          "     ",
          "    A"
  
  end
  

  # it "pass the background" do
  #   game.pass
  #   screen"|   |",
  #         "     ",
  #         "     ",
  #         "     ",
  #         "  A  "
  #
  #   game.pass
  #   screen"   # ",
  #         "|   |",
  #         "     ",
  #         "     ",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "   # ",
  #         "|   |",
  #         "     ",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "   # ",
  #         "|   |",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "     ",
  #         "   # ",
  #         "| A |"
  #
  #   game.pass
  #   screen"|   |",
  #         "     ",
  #         "     ",
  #         "     ",
  #         "  A# "
  #
  #   game.pass
  #   screen"     ",
  #         "|   |",
  #         "     ",
  #         "     ",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "|   |",
  #         "     ",
  #         "  A  "
  #
  #
  #   game.pass
  #   screen"  #  ",
  #         "     ",
  #         "|   |",
  #         "     ",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "  #  ",
  #         "     ",
  #         "|   |",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "  #  ",
  #         "     ",
  #         "| A |"
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "     ",
  #         "  #  ",
  #         "  A  "
  #
  #   game.pass
  #   screen"     ",
  #         "     ",
  #         "     ",
  #         "     ",
  #         " *#* "
  #
  #
  # end
  #
  def screen(*lines)
    game.screen.must_equal(lines.join("\n"))
  end

  def game
    @game
  end
end
