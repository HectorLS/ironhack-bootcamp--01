#encoding: utf-8


################################## MENU #####################################
class Menu
	def initialize
		self.show_menu
	end

	def show_menu
		puts "WELCOME TO THE IRONHACK MARKET"
		puts "You can buy this fruits"
		puts  "Apple"
		puts  "Oranje"
		puts  "Grave"
		puts  "Banana"
		puts  "Watermelon"
	end
end

################################## CART #####################################

class Cart
	def initialize
		@items_in_the_cart = {}  #Creo un hash que tendrá de key el nombre del item, y de value la cantidad de este
		#@season = Temporada.today.season
	end

	def add_the_item(item_name)
		@items_in_the_cart[item_name] ||= 0    # Si no hay nada será igual a cero    ||=
		@items_in_the_cart[item_name] += 1
	end

	def get_final_cost
		total_cost = 0
		@items_in_the_cart.each do |item_name, amount_of_that_item|
			total_cost +=  (amount_of_that_item * Precio.get_initial_price(item_name)) - Descuentos.get_discounts(item_name, amount_of_that_item)
		end
		puts "The total cost of your purchase is: #{total_cost} $"
		puts "You purchased these items: #{@items_in_the_cart}"
		items_finales = @items_in_the_cart + Descuentos.discounts_with_gifts
		puts "You purchased these items: #{items_finales}"
	end

	def get_the_gifts(item_name, amount_of_that_item)
		Descuentos.discounts_with_gifts(item_name, amount_of_that_item)
	end
end


################################# DESCUENTOS #####################################
class Descuentos
	def self.get_discounts(item_name, amount_of_that_item)
		a_discount_of = 0
		case item_name
		when "Manzana"
			if (amount_of_that_item >= 2)
				a_discount_of = amount_of_that_item * ((Manzana.get_price)/2)
			else
				a_discount_of
			en
			end
		when "Naranjas"
			if (amount_of_that_item >= 3)
				a_discount_of = amount_of_that_item * ((Naranja.get_price)/3)
			else
				a_discount_of
			end
		else
			a_discount_of
		end
	end

	def self.discounts_with_gifts(item_name, amount_of_that_item)
		if item_name == "Uva" && amount_of_that_item >= 4
			# my_cart.add_the_item("Uva")   Esto no puede funcionar porque un self no puede iterar con una instancia y menos desde otra clase
			#I don't know how make the platano discounts 
		else
		end
	end
end

	
################################# SEASONS #####################################

class Temporada
end


#############   ITEM PRIZES   ############

class Precio
	def self.get_initial_price(item_name)
		price = 0
		case item_name
		when "Manzana"
			price = Manzana.get_price
		when "Naranja"
			price = Naranja.get_price
		when "Uva"
			price = Uva.get_price
		when "Platano"
			price = Platano.get_price
		when "Melon"
			price = Melon.get_price
		else
			price
		end
		#Necesario ? o lo coge del when directamente el valor...
	end
end

#####################################   ITEMS #########################################
#Easy way for the initial prices, thanks to Adriá :)
class Manzana
	def self.get_price
		10
	end
end

class Naranja
	def self.get_price
		5
	end
end

class Uva
	def self.get_price
		15
	end
end

class Platano
	def self.get_price
		20
	end
end

class Melon
	def self.get_price
		50
	end
end

the_menu = Menu.new
my_cart = Cart.new

my_cart.add_the_item("Manzana")
my_cart.add_the_item("Manzana")
my_cart.add_the_item("Manzana")
my_cart.add_the_item("Naranja")
my_cart.add_the_item("Melon")
my_cart.add_the_item("Uva")
my_cart.add_the_item("Uva")
my_cart.add_the_item("Uva")
my_cart.add_the_item("Uva")


puts my_cart.get_final_cost

