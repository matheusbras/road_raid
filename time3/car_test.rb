require 'minitest/autorun'
require './car'

class CarTest < MiniTest::Unit::TestCase
  describe "#initialize" do
    it { assert_equal(12, Car.new.position) }
    it { assert_equal(20, Car.new(20).position) }
    it { assert_equal('H', Car.new.image) }
  end
  
	describe "#action" do
    describe "moving left" do
      it "change position left" do
        car = Car.new
        car.action('a')
        assert_equal(11, car.position)
      end
      
      it "change position left on border" do
        car = Car.new(0)
        car.action('a')
        assert_equal(0, car.position)
      end
      
      it "change position right" do
        car = Car.new
        car.action('d')
        assert_equal(13, car.position)
      end
      
      it "change position right on border" do
        car = Car.new(22)
        car.action('d')
        assert_equal(22, car.position)
      end
    end
  end
end