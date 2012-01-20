class Player
	def initialize()
		@old_hp = 20
		@back = false
		@resting_at_wall = false
		@capitve_released = false
		@count = 0
		@first = true
		@second = true
	end
  def play_turn(warrior)
	ahead = warrior.look
	if @first == true
		warrior.walk!
		@first = false
	else
		if @second == true
			warrior.rescue!
			@second = false
		else
			if @count < 2
				warrior.shoot!
				@count = @count + 1
			else
				warrior.walk!
			end
		end
	end
	@old_hp = warrior.health
  end
end
