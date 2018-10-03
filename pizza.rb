puts "how many pizzas?"
pizza = gets.chomp.to_i

def prices()
	5.00
end

def psize()
	size = ["small","medium","large"].sample
end

def pizza_crust()
	crust =["thin","regular","stuffed"].sample
end

def pizza_meat()
	meats = ["pepperoni","sausage","ham"].sample
end

def pizza_veggies()
	veggies = ["banana pepper","pineapple","mushroom"].sample
end
def pizza_extras()
	extra = ["extra cheese","extra sauce","double pepperoni"].sample
end
def topping(x)
	print  "topping#{x}"

loop do
	if x == "yes"
		 pizza_extras()
		 break
	elsif x == 'no'
		 puts "No extra Toppings"
		 break
	else
		puts "Please enter yes or no"
		x = gets.chomp
		break
	end
end
end

def total(num1, num2, num3, num4)
	p (num1 * num2 + num3 + num4)
end
count = 1
size_price = 0
delivery_cost = 0
puts "any extra toppings yes or no?"
x = gets.chomp
topping(x)


puts "Delivery?"
d = gets.chomp

pizza.times do 
pizza_size = psize
	if pizza_size == "small"
		size_price += 5 
		
	elsif pizza_size == "medium"
		size_price += 10
		 
	elsif pizza_size == "large"	
		size_price += 15
		 
	end

	if d == "y"
		delivery_cost = 2
	else d == "n"
		delivery_cost = 0
	end

puts "#{count}: Your pizza size is #{pizza_size}, your crust is #{pizza_crust}, your meat is #{pizza_meat}, your veggie is #{pizza_veggies} and your extra is #{pizza_extras}."

count = count+1
end

puts "Your total is:"
total(pizza, prices, size_price, delivery_cost)
