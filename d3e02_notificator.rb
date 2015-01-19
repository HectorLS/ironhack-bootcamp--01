class User

	attr_accessor :name, :email, :twitter, :facebook

	def initialize(name,email,twitter,facebook)
		@name = name
		@email = email
		@twitter = twitter
		@facebook = facebook
	end
end

class Notificator
	#El .self nos permite usar ese método sin tener que crear un objeto
	#de esa clase para poder usarlo
	def self.get_valid_notificator(user)
		#Sí el twitter es ditinto de "none" (osea, si el user tiene twitter) entonces
		#crea el twitterNotificator el cual manda el mensaje.
		if user.email != "none"
			EmailNotificator.new(user) #Añadimos el (user) para que el nuevo EmailNotificator object tenga los inputs de dicho (user), que será un objeto de la class User
		elsif user.twitter != "none"
			TwitterNotificator.new(user)
		elsif user.facebook != "none"
			FacebookNotificator.new(user)
		else
			puts "He has nothing, good luck with that bro...."
		end
	end
end

class EmailNotificator
	def initialize(user)				#Necesitamos el initialize para que se ejecute cuando se crea un nuevo EmailNotificator in this case y toma el valor del user
		@the_user_email = user.email 	#Recordemos que user en este caso es el objeto de la class User (user_new es uno de estos objetos)
		@the_user_name = user.name		#Entonces llamamos a la variable name (IMPORTANTE: podemos hacerlo fuera de su clase gracias al atrr_accessor)
	end
	def send_message
		puts "El usuario #{@the_user_name} tiene este email: #{@the_user_email}"
	end
end

class TwitterNotificator
	def initialize(user)
		@the_user_name = user.name
		@the_user_twitter = user.twitter
	end

	def send_message
		puts "El usuario #{@the_user_name} tiene esta cuenta de twitter: #{@the_user_twitter}"
	end
end

class FacebookNotificator
	def initialize(user)
		@the_user_name = user.name
		@the_user_facebook = user.facebook
	end

	def send_message
		puts "El usuario #{@the_user_name} tiene esta cuenta de facebook #{@the_user_facebook}"
	end
end



user_new = User.new("Helena", "none", "@Helena", "none")
user_two = User.new("Hector", "myemail@email.com", "none", "none")
user_three = User.new("Rafa", "none", "none", "FB/GodOfRuby")
user_empty = User.new("Anonymous", "none", "none", "none")

#Este (user_new) dentro de la linea inferior hace lo siguiente:
#notificator analiza el objeto user_new creado previamente
#Dicho objeto pasa a ser un argumento en el método get_valid_notificator
#Ahora usa los condicionales if, elsif....etc para realizar la acción del método
contact_user_new = Notificator.get_valid_notificator(user_new)
contact_user_new.send_message

contact_user_two = Notificator.get_valid_notificator(user_two)
contact_user_two.send_message

contact_user_three = Notificator.get_valid_notificator(user_three)
contact_user_three.send_message

contact_user_empty = Notificator.get_valid_notificator(user_empty)
contact_user_empty.send_message


#User_one = User.new("Helena", "blabla@email.com", "@Helena", "facebook/ELenea/whatever")