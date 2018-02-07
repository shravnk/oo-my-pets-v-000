class Owner
  @@all
  @@all = []

  attr_reader :species
  attr_accessor :owner, :fishes, :cats, :dogs
  @species = "human"

  def initialize

  end

  def self.count
    @@all.length
  end

  def reset_all
    @@all = []
  end

  def say_species
    puts "I am a #{@species}"
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @fishes << fish
  end

end
