class NewPry
	def self.start_the_evaluation(thing_to_evaluate)
		eval thing_to_evaluate
	end
end

a = gets.chomp
while (a != "exit")
	puts NewPry.start_the_evaluation(a)
	a = gets.chomp
end
