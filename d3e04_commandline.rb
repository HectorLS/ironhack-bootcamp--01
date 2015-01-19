class CommandLine

	attr_accessor :username, :password, :text

	def initialize
		puts "Please give your username"
		@username = gets.chomp
		puts "Ok #{@username}, give me your password"
		@password = gets.chomp

	end

	def checker
		while (@password != "rubyruby")
			puts "That's not a valid password"
			puts "Please enter a valid password"
			@password = gets.chomp
		end
	end

	def get_text
		puts "Write something"
		@text = gets.chomp
		puts "Your text is:"
		puts  @text
	end
end

class Menu

	def initialize
		puts "What do you want to do now?"
		puts "Press 1 to count the text"
		puts "Press 2 to reverse the text"
		puts "Press 3 to uppercase the text"
		puts "Press 4 to lowercase the text"
	end

	def input_checker(text)
		while
			@action_number = gets.chomp.to_i
			  if @action_number == 1
			  	actions_available.count_text(myprompt.text)
			  break
			  elsif @action_number == 2
			  	actions_available.reverse_text(myprompt.text)
			  break
			  elsif @action_number == 3
			  	actions_available.uppercase_text(myprompt.text)
			  break
			  elsif @action_number == 4
			  	actions_available.lowercase_text(myprompt.text)
			  break
			  else
			    puts "That's not a valid actions"
				puts "Please enter a valid actions. Must be a number between 1-4"
			 end
		end
	end
=begin
#Intentando lo mismo pero con Case (aun no funciona)
	def input_checker(text)
		@action_number = gets.chomp
		case @ation_number
			when 1
			  actions_available.count_text(myprompt.text)
			when 2
			  actions_available.reverse_text(myprompt.text)
			when 3
			  actions_available.uppercase_text(myprompt.text)
			when 4
			  actions_available.lowercase_text(myprompt.text)
			else
			 	puts "That's not a valid actions"
				puts "Please enter a valid actions. Must be a number between 1-4"
			end
		end
	end
=end
end
=begin
d3_exercise_04.rb:46:in `input_checker': undefined local variable or method `actions_available' for #<Menu:0x000000008fcb40 @action_number=2> (NameError)
	from d3_exercise_04.rb:92:in `<main>'
=end
class Actions
	def count_text(text)
		puts "I'm the superCOUNTER"
		puts "Your sentence has " + text.length.to_s + " characters"
	end

	def reverse_text(text)
		puts "I'm the reverser"
		puts "Your sentence has " + text.reverse.to_s
	end

	def uppercase_text(text)
		puts "I love the UPPERCASE"
		puts "Your sentence looks better now " + text.upcase.to_s + " right?"
	end
	def lowercase_text(text)
		puts "Please don't shout me"
		puts "Your sentence looks better now " + text.downcase.to_s + " right?"
	end
end


myprompt = CommandLine.new
myprompt.checker
myprompt.get_text
# IMPORTANTE:  Los objetos siempre llaman métodos, incluso el siguiente el myprompt.text
# no está llamando a la variable text, sino al método attr_accessor el cual devuelve el valor de la variable text.
actions_available = Actions.new
the_actions_menu = Menu.new
the_actions_menu.input_checker(myprompt.text)
=begin
actions_available.count_text(myprompt.text)
actions_available.reverse_text(myprompt.text)
actions_available.uppercase_text(myprompt.text)
actions_available.lowercase_text(myprompt.text)
=end





