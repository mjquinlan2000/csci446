class Player
	@old_hp = 20
	@back = false
	@resting_at_wall = false
  def play_turn(warrior)
	if warrior.feel.wall?
		if warrior.health < 20
			warrior.rest!
		else
			warrior.pivot!
			@back = false
		end
	else
		if warrior.feel.empty?
			if warrior.health < 10 and @back == false
				warrior.pivot!
				@back = true
			else
				warrior.walk!
			end
		else
			warrior.attack!
		end
	end
	@old_hp = warrior.health
  end
end
