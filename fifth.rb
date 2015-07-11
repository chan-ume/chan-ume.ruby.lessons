class Shop
	attr_accessor :name

	def initialize(name)
		self.name = name
	end

	def print_details
		puts "shop: #{name}"
	end
end

module AnimalModule
	attr_accessor :animals

	def print_animals
		puts "animals: #{animals.join(",")}"
	end
end

module CafeModule
	attr_accessor :menus

	def print_menus
		puts "menus: #{menus.join(",")}"
	end
end

class PetShop < Shop
	include AnimalModule
	
	def print_details
		super
		print_animals
	end
end

class AnimalCafe < Shop
	include AnimalModule
	include CafeModule

	def print_details
		super
		print_animals
		print_menus
	end
end

petshop1 = PetShop.new("petshop1")
animalcafe1 = AnimalCafe.new("animalcafe1")

petshop1.animals=["dog","cat","rion"]
animalcafe1.animals = ["inu","neko","raion"]
animalcafe1.menus = ["beer","coffee","milk"]

petshop1.print_details
animalcafe1.print_details


