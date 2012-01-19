class Player
	@old_hp = 20
  def play_turn(warrior)
	if warrior.health < 20 and warrior.feel.empty? and @old_hp <= warrior.health
		warrior.rest!
	else
		if warrior.feel.empty?
			warrior.walk!
		else
			if warrior.feel.captive?
				warrior.rescue!
			else
				warrior.attack!
			end
		end
	end
	@old_hp = warrior.health
  end
end
