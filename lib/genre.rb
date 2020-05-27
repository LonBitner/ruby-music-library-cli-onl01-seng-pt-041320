class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, songs = nil)
    @name = name
    @songs = song
    save
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end
  
  def self.create(genre)
    self.new(genre)
  end

end