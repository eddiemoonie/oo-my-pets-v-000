class Owner

    attr_accessor :name, :pets
    attr_reader :species
    OWNERS = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    OWNERS << self
  end

  def say_species(species)
    "I am a #{species}"
  end

  def self.all
    OWNERS
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.count
    OWNERS.count
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animal.each do |animal|
        animal.mood = "nervous"
      end
    end
    animals.clear
end
