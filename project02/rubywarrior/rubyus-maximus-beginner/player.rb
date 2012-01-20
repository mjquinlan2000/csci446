class Player
	@old_hp = 20
	@back = false
	@resting_at_wall = false
  def play_turn(warrior)
	if @resting_at_wall == true and warrior.health < 20
		warrior.rest!
	else
		if @resting_at_wall == true and warrior.health == 20
			@resting_at_wall = false
			warrior.walk!
		else
			if @back == true
				if warrior.feel(:backward).empty?
					warrior.walk!(:backward)
				else
					if warrior.feel(:backward).captive?
						warrior.rescue!(:backward)
					else
						if warrior.feel(:backward).wall?
							@back = false
							@resting_at_wall = true
							warrior.rest!
						end
					end
				end
			else
				if warrior.health < 10 and @old_hp > warrior.health
					@back = true
					warrior.walk!(:backward)
				else
					if warrior.feel.empty? and @old_hp == warrior.health and warrior.health < 20
						warrior.rest!
					else
						if warrior.feel.empty?
							warrior.walk!
						else
							warrior.attack!
						end
					end
				end
			end
		end
	end
	@old_hp = warrior.health
  end
end
