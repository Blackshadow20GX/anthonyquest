require_relative 'stats'
class Combat
	#instance variables
	attr_accessor :active
	attr_reader :player
	attr_reader :enemy
	
	def initialize(player, enemy)
		@player = player
		@enemy = enemy
	end

	def deathchk()
		if player.currhp < 1 || enemy.currhp < 1
			@active = false
		end
	end

	def playerturn()
		puts "What will #{player.name} do?"
		option = gets.chomp
		#put Event class here in future
		puts "#{player.name} chose to attack!"
		enemy.currhp = enemy.currhp - player.str
		puts "HP: #{player.currhp}, #{enemy.currhp}"
		deathchk()
	end

	def enemyturn()
		puts "#{enemy.name} hits you!"
		player.currhp = player.currhp - enemy.str
		deathchk()
	end
	
	#takes a particular encounter, loops until
	#all are dead
	def begin()
		@active = true
		puts "Combat begins!"
		while active
			#wait for player input
			if @active
				self.playerturn()
			end
			if @active
				self.enemyturn()
			end
			#do player action
			#if not over, do enemy action
			#if not over, continue loop	
		end
		if enemy.currhp < 1
			puts "You won! Yay!"
		else
			puts "boo flinder, you lose!"
		end
	end
end

anthony = Character.new()
evilthony = Character.new()
anthony.name = "Anthony"
evilthony.name = "Evilthony"
encounter = Combat.new(anthony, evilthony)
encounter.begin()
puts "Finished encounter module successfully!"
