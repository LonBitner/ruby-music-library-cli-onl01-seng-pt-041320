class Song
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
    save
  end
  
  def artist
    @artist
  end
  
  def artist
  
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
