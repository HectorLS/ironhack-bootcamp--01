#encoding: utf-8
require 'terminfo'
p TermInfo.screen_size
##########################################################  SLIDES ################################################################
class Slide

	def initialize(slide_content)
		@slide_content = slide_content
	end

	def show_content
		@slide_content
	end
end
########################################################## PRESENTATION ################################################################
class Presentation
	def initialize
		@the_presentation = []  #Creo la presentación que ahora está vacía
	end

	def add_slide (slide)
		@the_presentation << slide  #Aquí meto los slides(las diapositivas) dentro de la presentación
	end

	def show_slide(num_slide)  #Dando el número de slide almacenado en the_presentation, obtengo el contenido de ese slide
		@the_presentation[num_slide].show_content #Entre corchetes el argument porque es un array
	end
end

##########################################################  INTERFACE ################################################################

class Control

	def initialize(presentations)
		@presentations = presentations
	end

	def start
		puts "Please write PREVIOUS or NEXT (in uppercase) to move into presentation"
		i_want_to_see = gets.chomp
		case i_want_to_see
		when "NEXT"
			self.go_next_slide
		when "PREVIOUS"
			self.go_previous_slide
		else
			puts "Escribe bien gañan!!"
		end
	end

	def go_previous_slide
		puts presentations.show_slide
	end

	def go_next_slide
		puts presentations.show_slide
	end
end

class Style
	def initialize
		@terminal_width = TermInfo.screen_size.last
		@terminal_height = TermInfo.screen_size.first
	end	

	def controller
		puts "Please write PREVIOUS or NEXT (in uppercase) to move into presentation"
		i_want_to_see = gets.chomp
		case i_want_to_see
		when "NEXT"
			self.go_next_slide
		when "PREVIOUS"
			self.go_previous_slide
		else
			puts "Escribe bien gañan!!"
		end
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
		self.controller                     # Llamo al método controller dentro de esta clase mediante el .self
	end
end


style = Style.new
mipresentacion = Presentation.new(style)
slide_00 = Slide.new(" Apple Store ")
slide_01 = Slide.new("""	================================
	=Prepare for the next big thing=
	================================""")
slide_02 = Slide.new("The iPhone 45 UltraS")


mipresentacion.add_slide slide_00
mipresentacion.add_slide slide_01
mipresentacion.add_slide slide_02


Control.new(mipresentacion).start
#.center(mipresentacion.show_slide(0))


