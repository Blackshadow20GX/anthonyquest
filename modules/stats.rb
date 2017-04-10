#Party Members class, base
#TODO: Add equipment slots, require equip class?
class Character
	#instance variables
	attr_reader :id
	attr_reader :maxxp
	attr_accessor :name
	attr_accessor :lvl
	attr_accessor :currxp
	attr_accessor :maxhp
	attr_accessor :currhp
	attr_accessor :str
	attr_accessor :def
	attr_accessor :spd
	
	def initialize()
		@id = 0
		@name = "test"
		@lvl = 1
		@currhp = 10
		@maxhp = 10
		@str = 5
		@def = 5
		@spd = 5
		@currxp = 0
		@maxxp = 100
	end

	#def initialize(id, name, lvl, hp, str, defence, spd)
	#	@id = id
	#	@name = name
	#	@lvl = lvl
	#	@currhp = hp
	#	@maxhp = hp
	#	@str = str
	#	@def = defence
	#	@spd = spd
	#	@currxp = 0
	#	@maxxp = 100
	#end

	def levelup()
		@lvl = @lvl + 1
		puts "#{@name} hit Level #{@lvl}!" 
	end
end

#anthony = Character.new(1, "Anthony", 1, 100, 10, 5, 5)
#puts "#{anthony.name} is level #{anthony.lvl}"
#anthony.levelup()
#puts "#{anthony.name} is level #{anthony.lvl}"
