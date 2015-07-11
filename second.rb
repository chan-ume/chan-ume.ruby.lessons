x = "techacademy"
y = x.upcase
puts y

z = x.length
puts z 

colors = ["red","green","blue"]
p colors
p colors[2]

#p colors.last
#p colors.first

#first_colors = {"apple" => "red", "orange"=>"orange","banana"=> "yellow"}

#p first_colors["banana"]
cities = {japan: ["tokyo","osaka","nagoya"],count:3}
#p cities[:japan]
#p cities[:count]
1.upto(10) do |n|
	puts "■"*n
end
cities.each do |city|
	puts city
end

