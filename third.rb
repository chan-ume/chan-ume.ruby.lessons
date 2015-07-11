def hello1
	puts "Hello ゲストさん！"
end

def hello2(name="ゲストさん")
	puts "Hello, #{name}"
end

hello1()
hello2("yuichi")
hello2()

class User
	@@count = 0
	def initialize(name)
		@name = name
		@@count += 1
	end
	def User.say
		puts "hello from user class (#{@@count} users) "
	end
	def sayhi
		puts "hello, my name is #{@name}"
	end
end

User.say
tom = User.new("Tom")
bob = User.new("Bob")
tom.sayhi()
bob.sayhi()
User.say
