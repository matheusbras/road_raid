require './game'
require 'minitest/autorun'

describe Game do
  before do
    @game = Game.new
  end

  it "moves the car to right" do
    @game.car_position.must_equal(12)
    @game.move_car_to(:right)
    @game.car_position.must_equal(13)
  end

  it "moves the car to left" do
    @game.car_position.must_equal(12)
    @game.move_car_to(:left)
    @game.car_position.must_equal(11)
  end

  # make these tests pass
  # it "moves the car and don't exceed the bounds to left" do
  #   @game = Game.new(car_position: 0)
  #   @game.car_position.must_equal(0)
  #   @game.move_car_to(:left)
  #   @game.car_position.must_equal(0)
  # end
  #
  # it "moves the car and don't exceed the bounds to right" do
  #   @game = Game.new(car_position: 24)
  #   @game.car_position.must_equal(24)
  #   @game.move_car_to(:right)
  #   @game.car_position.must_equal(24)
  # end
end

