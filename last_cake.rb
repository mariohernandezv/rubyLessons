class Player
  def initialize(cakes)
    @cakes = cakes
  end
  # Decide who move first - player or opponent (return true if player)
  def firstmove(cakes)
    true # I want to move first
  end
  # Decide your next move (return 1, 2 or 3)
  def move(cakes, last)
    #last == 1 ? 2 : 1 # I'm not greedy
    if cakes == 1
      
    elsif cakes == 2
    
    else

    end
  end
end