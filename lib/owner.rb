class Owner
  @@all
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets


  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @cats << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @dogs << dog
  end

end
