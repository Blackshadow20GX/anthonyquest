#Main executible for Anthony Quest.
while 1
	puts "===ANTHONY QUEST==="
	puts "[N]ew"
	puts "[C]ontinue"
	puts "[Q]uit"
	option = gets.chomp
	if option[0] == "n" || option[0] == "N"
		#new
		"Let's play!"
	elsif option[0] == "c" || option[0] == "C"
		#load
		puts "Let's load!"
	elsif option[0] == "q" || option[0] == "Q"
		puts "Thanks for playing! Bye!"
		exit
	else
		puts "Invalid input. Try again!"
	end
end
