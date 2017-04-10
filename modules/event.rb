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
		if item[0] == option[0]
			return true
		end
	end
	return false
	end

	def processText()
		#id,options,text
		pathway = File.join(Dir.pwd, "/events/#{@id}.txt")
		if File.file?(pathway)
			@text = File.open(pathway, 'r').readlines
		else
			@text = "File not found: #{pathway}"
		end
	end
end

start = Event.new("testevent")
start.text = start.processText()
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
	anthony = Character.new()
	anthony.lvl = 99
	anthony.levelup()
else
	puts "You're not Anthony! Git!"
end
