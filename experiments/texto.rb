class CommandLine
	attr_accessor :text

	def get_text(text)
		@text = gets.chomp	
	end
end



myprompt = CommandLine.new
myprompt.get_text
