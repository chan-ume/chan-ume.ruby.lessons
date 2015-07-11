class Shop
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def print_details
		puts "shop: #{name}"
	end
end

class PetShop < Shop
	attr_accessor :animals
	
	def print_details
		super
		print_animals
	end

	def print_animals
		puts "animals: #{animals.join(',')}"
	end
end


shop = Shop.new("Drugstore Shining")
shop.print_details

pet_shop = PetShop.new("Pet Shop Hikari")
pet_shop.animals = ["dogs","cat","rabbit"]
pet_shop.print_details


