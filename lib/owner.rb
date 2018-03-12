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
    pet[:fish] << Fish.new(name)

  def walk_dogs

  end

end
