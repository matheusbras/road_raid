require './marcio/game'
require 'minitest/autorun'

describe "test" do

  describe "show_single_key" do
    it "Work with right" do
      show_single_key("\e[C").must_equal :right
    end

    it "Work with left" do
      show_single_key("\e[D").must_equal :left
    end
  end

end

