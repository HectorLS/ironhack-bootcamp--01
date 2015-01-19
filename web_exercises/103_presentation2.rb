#encoding: utf-8
require 'terminfo'
p TermInfo.screen_size
##########################################################  SLIDES ################################################################
class Slides

	def initialize(slides_source)
		@slide_file = IO.read(slides_source)
	end

	def get_slide_content
		@slide_file
	end
end

########################################################## PRESENTATION ################################################################
class Presentation
	def initialize
		@the_presentation = []  #Creo la presentación que ahora está vacía
		@style = Style.new
	end

	def add_slides (slide)
		@the_presentation += (slide).split("----")  #Aquí meto los slides(las diapositivas) dentro de la presentación
	end

	def show_slide(num_slide)  #Dando el número de slide almacenado en the_presentation, obtengo el contenido de ese slide
		@style.center(@the_presentation[num_slide]) #Entre corchetes el argument porque es un array
		@control = Control.new(self).start(num_slide)
	end #Creo una instacia de otra clase para esta clase para poder luego usarla
end
##########################################################  CONTROL ################################################################

class Control

	def initialize(the_presentation)
		@the_presentation = the_presentation
	end

	def start(num_slide)
		@actual_slide = num_slide
		puts "Please write PREVIOUS or NEXT (in uppercase) to move into presentation"
		i_want_to_see = gets.chomp
		case i_want_to_see
		when "NEXT"
			@actual_slide += 1
			self.go_next_slide(@actual_slide)
		when "PREVIOUS"
			@actual_slide -= 1
			self.go_previous_slide(@actual_slide)
		else
			puts "Escribe bien gañan!!"
		end
	end

	def go_previous_slide(num_slide)
		puts @the_presentation.show_slide(num_slide)
	end

	def go_next_slide(num_slide)
		puts @the_presentation.show_slide(num_slide)
	end
end

class Style
	def initialize
		@terminal_width = TermInfo.screen_size.last
		@terminal_height = TermInfo.screen_size.first
	end	
		
	def center (slide)
		vertical_margin = []
		h = @terminal_height
		i = "\n"
		while (vertical_margin.size) <= (@terminal_height/3)
			vertical_margin << i
		end
		puts vertical_margin
		puts slide.center(@terminal_width)
		puts vertical_margin
	end
end



the_presentation = Presentation.new
the_slides = Slides.new("presentation.txt")
the_presentation.add_slides(the_slides.get_slide_content)


puts the_presentation.show_slide(0)



############################# NOTAS NOTAS LEEEEEEEEER ########3

# No se puede llamar a una instancia de una clase A  desde una clase B directamente
# Pero puedes crear en la clase B una instancia que contenga una nueva instancia clase A
# y entonces podrás aplicar métodos de la clase B a esa instacia de la clase A

# Ver línea 23 y el initialize de la 36
