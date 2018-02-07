class Owner
  @@all
  @@all = []

  attr_reader :species
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



end
