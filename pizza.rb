puts "how many pizzas?"
pizza = gets.chomp.to_i

def prices()
	10.00
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

def total(num1, num2, num3)
	p (num1 * num2 + num3)
end
count = 1
size_price = 0

puts "any extra toppings yes or no?"
x = gets.chomp



pizza.times do 
pizza_size = psize
	if pizza_size == "small"
		size_price += 5 
		
	elsif pizza_size == "medium"
		size_price += 10
		 
	elsif pizza_size == "large"	
		size_price += 15
		 
	end

	if x == "y"
		 pizza_extras
	else x == 'n'
		 "No extra Toppings"
	end

puts "#{count}: Your pizza size is #{pizza_size}, your crust is #{pizza_crust}, your meat is #{pizza_meat}, your veggie is #{pizza_veggies} and your extra is #{pizza_extras}."

count = count+1
end

puts "Your total is:"
total(pizza, prices, size_price)
