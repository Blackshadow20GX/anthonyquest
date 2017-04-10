require_relative 'stats'
class Event
	#instance variables
	attr_reader :id
	attr_accessor :text
	attr_accessor :options	

	def initialize(id)
	#put file method here?
	@id = id
	@text = "Default"
	@options = ["n", "a"]
	end
	
	def valid?(option)
	options.each do |item|
		if item.ord == option.ord
			return true
		end
	end
	return false
	end
end

start = Event.new("Q001")
start.text = "Welcome to Anthony Quest! Are you Anthony?"
start.options = ["y", "n"]
puts start.text
compare = false

#Loop for valid answer
while !compare
option = gets.chomp
puts "You chose #{option}."
compare = start.valid?(option)
	if !compare
		puts "Not a valid option. Try again scrub!"
	end
end

#Got a valid input. Yay!
if option[0] == "y"[0]
	puts "You're Anthony! Congrats!"
	anthony = new Character()
	anthony.lvl = 99
	anthony.levelup()
else
	puts "You're not Anthony! Git!"
end