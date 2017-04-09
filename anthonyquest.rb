class Event
	#instance variables
	attr_accessor :id
	attr_accessor :text
	attr_accessor :options
	

	def initialize(id)
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
else
	puts "You're not Anthony! Git!"
end
