require './game'
require 'minitest/autorun'

describe "The game works" do

  it "initial state" do
    game = Game.new

    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            "  A  "].join("\n")
  end

  it "move the car" do
    game = Game.new
    game.move_left
    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            " A   "].join("\n")

    game.move_right
    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            "  A  "].join("\n")

    game.move_right
    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            "   A "].join("\n")

    game.move_right
    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            "    A"].join("\n")

    game.move_right
    game.screen.must_equal ["     ",
                            "     ",
                            "     ",
                            "     ",
                            "    A"].join("\n")
  end
  # it "pass the background" do
  #   game = Game.new
  #   game.pass
  #   game.screen.must_equal ["|   |",
  #                           "     ",
  #                           "     ",
  #                           "     ",
  #                           "  A  "].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["     ",
  #                           "|   |",
  #                           "     ",
  #                           "     ",
  #                           "  A  "].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["     ",
  #                           "     ",
  #                           "|   |",
  #                           "     ",
  #                           "  A  "].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["     ",
  #                           "     ",
  #                           "     ",
  #                           "|   |",
  #                           "  A  "].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["     ",
  #                           "     ",
  #                           "     ",
  #                           "     ",
  #                           "| A |"].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["     ",
  #                           "     ",
  #                           "     ",
  #                           "     ",
  #                           "  A  "].join("\n")
  #
  #   game.pass
  #   game.screen.must_equal ["|   |",
  #                           "     ",
  #                           "     ",
  #                           "     ",
  #                           "  A  "].join("\n")
  #
end
