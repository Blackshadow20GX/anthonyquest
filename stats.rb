#Party Members class, base
class Character
	#instance variables
	attr_reader :id
	attr_reader :maxxp
	attr_accessor :name
	attr_accessor :lvl
	attr_accessor :currxp
	attr_accessor :hp
	attr_accessor :str
	attr_accessor :def
	attr_accessor :spd
	
	def initialize(id, name, lvl, hp, str, defence, spd)
		@id = id
		@name = name
		@lvl = lvl
		@hp = hp
		@str = str
		@def = defence
		@spd = spd
		@currxp = 0
		@maxxp = 100
	end

	def levelup()
		@lvl = @lvl + 1
		puts "#{@name} hit Level #{@lvl}!" 
	end
end

anthony = Character.new(1, "Anthony", 1, 100, 10, 5, 5)
puts "#{anthony.name} is level #{anthony.lvl}"
anthony.levelup()
puts "#{anthony.name} is level #{anthony.lvl}"
