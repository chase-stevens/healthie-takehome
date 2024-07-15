require_relative 'foods'

class Animal
  def initialize
    @preferred_foods = []
  end

  def eat(food)
    if @preferred_foods.include? food.class
      3.times { make_noise }
    else
      make_noise
    end
  end
  
  def make_noise
    puts noise
  end

  def noise
    # pass
  end
end

class Cat < Animal
  def initialize
    @preferred_foods = [CatFood, Chicken, Milk]
  end

  def noise
    "meow"
  end
end

class Dog < Animal
  def initialize
    @preferred_foods = [DogFood, CatFood, Chicken, HumanFood]
  end

  def noise
    "bark"
  end
end