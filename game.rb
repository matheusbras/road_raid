$width = 80
$height = 40
$road = '|'
$car = '*'
$car_position = [20,30]

def start_game
  arr = []

  $height.times do |height|
    $width.times do |width|
      arr << [height, width]
    end
  end

  while true do
    puts "\e[H\e[2J"

    char = STDIN.read_nonblock(1) rescue nil

    if char == 'a'
      $car_position = [$car_position[0] - 1, $car_position[1] - 1]
    end

    if char == 'd'
      $car_position = [$car_position[0] + 1, $car_position[1] + 1]
    end

    arr.each do |map|
      if map == $car_position
        print '*'
      else
        print '--'
      end
    end

    sleep 0.5
  end
end

start_game