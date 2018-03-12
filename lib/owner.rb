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
    [:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

end
