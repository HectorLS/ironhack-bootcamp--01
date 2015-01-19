class Slides

	def initialize(slides_source)
		@slide_file = IO.read(slides_source)
	end

	def get_slide_content
		@slide_file
	end
end

class Presentation
	def initialize
		@the_presentation = []  #Creo la presentación que ahora está vacía
	end

	def add_slides (slide)
		@the_presentation += (slide).split("----")  #Aquí meto los slides(las diapositivas) dentro de la presentación
	end

	def show_slide(num_slide)  #Dando el número de slide almacenado en the_presentation, obtengo el contenido de ese slide
		@the_presentation[num_slide] #Entre corchetes el argument porque es un array
	end
end






the_presentation = Presentation.new
the_slides = Slides.new("presentation.txt")
the_presentation.add_slides(the_slides.get_slide_content)


puts the_presentation.show_slide(0)