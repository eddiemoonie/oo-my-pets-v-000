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

  def self.reset
    OWNERS.clear
  end

  def self.count
    OWNERS.count
  end

  def walk_dogs

  end

end
