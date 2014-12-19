require './game'
require 'minitest/autorun'

describe "The game works" do

  describe "initial state" do
    it "Have correct start" do
      game_result = "\e[H\e[2J
Score: 0
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
|                    |
|           A        |
"
     out, err = capture_io do
        start(1)
      end
      out.must_equal game_result
    end
  end
end
