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
		#Check file existence, then open it
		pathway = File.join(Dir.pwd, "/events/#{@id}.txt")
		if File.file?(pathway)
			@text = File.open(pathway, 'r').readlines
			lines = File.read(pathway)
		else
			puts "File not found: #{pathway}"
			exit
		end

		#process file
		#check id for validation
		fileid="none"
		lines.each_line { |line|
			if line=~ /id=/ then
				temp = line
				temp.slice! "id="
				fileid = temp.chomp
			end
		}
		#Terminate if faulty ID, otherwise continue
		if fileid != @id
			puts "File ID mismatch: Expected #{@id}; Actual #{fileid}" 
			exit
		else
			puts "File ID matched. Continuing processing..."
		end

		#check options, place appropriately

		#add quest text
		@text = text
		puts "Assigned text successfully. Processing complete!"
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
