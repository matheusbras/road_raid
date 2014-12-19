require './time2/game'
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
end
