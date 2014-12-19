class Main

  def call(limit = Float::INFINITY)
    i = 0
    while i < limit do
      game = Game.new(read_char)
      print game.call
      sleep 0.3
      i +=1
    end
  end

  def read_char
    Timeout::timeout(0.5) do
      input = STDIN.getch
      if input == 'q'
        exit
      end
      input
    end
    rescue Timeout::Error
      call
  end
end