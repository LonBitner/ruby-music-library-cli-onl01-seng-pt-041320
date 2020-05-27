class Song
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    @artist = []
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
  
  def self.create(song)
    self.new(song)
  end

end
