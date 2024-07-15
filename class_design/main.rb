require_relative "foods"
require_relative "animals"

cat = Cat.new
dog = Dog.new

catfood = CatFood.new
dogfood = DogFood.new
lemon = Lemons.new

def linebreak
  puts "#" * 20
end

# Cat eats food they like
linebreak
puts "Cat eating CatFood:"
cat.eat(catfood)
linebreak

# Dog eats food they like
linebreak
puts "Dog eating DogFood:"
dog.eat(dogfood)
linebreak

# Cat eats food they don't like
linebreak
puts "Cat eating Lemon:"
cat.eat(lemon)
linebreak

# Dog eats food they don't like
linebreak
puts "Dog eating Lemon:"
dog.eat(lemon)
linebreak