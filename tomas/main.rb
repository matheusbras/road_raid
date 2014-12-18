$columns = 50
$lines = 50
$car = '*'
$road = '-'

def paint
  $columns.times do |col|
    $lines.times do |lin|

    end
  end
end

def clear
  system(`clear`)
end

def main
  paint
  sleep 0.1
  clear
end

main
