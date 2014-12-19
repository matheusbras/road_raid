# encoding: UTF-8

class Game
  attr_reader :map
  attr_accessor :score, :car_position

  def initialize(params = {})
    @score = params.fetch(:score, 0)
    @car_position = params.fetch(:car_position, 12)
    @map = [
      "|                    |",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
      "|                    |",
      "||                  ||",
      "|                    |",
      "|                    |",
    ]
  end

  def move_car_to(position)
    case position    when :right
      self.car_position += 1
    when :left
      self.car_position -= 1
    end
  end

  def process_scenario
    elem = self.map.pop
    self.map.unshift elem
  end

  def render
    process_scenario
    text = "\e[H\e[2J\n"
    text += "Score: #{self.score}\n"
    car_area = "|                    |".split("")
    car_area[self.car_position] = "A"
    text += self.map.join("\n")
    text += "\n" + car_area.join("")
    text
  end
end


