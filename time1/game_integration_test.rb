require './game'
require 'minitest/autorun'

describe Game do
  before do
    @game = Game.new
  end

  it "renders the scenario" do
    @game.render.must_equal %{\e[H\e[2J
Score: 0
|                    |
|                    |
|                    |
|                    |
|                    |
||                  ||
|                    |
|                    |
|                    |
|                    |
||                  ||
|                    |
|                    |
|                    |
|                    |
|                    |
||                  ||
|                    |
|                    |
|                    |
||                  ||
|                    |
|                    |
|                    |
|                    |
||                  ||
|                    |
|                    |
|                    |
||                  ||
|                    |
|           A        |}
  end
end

