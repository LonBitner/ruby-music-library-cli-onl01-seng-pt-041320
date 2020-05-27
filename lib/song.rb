class Song
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    if artist != nil
      self.artist = artist
    end
        if genre != nil
      self.genre = genre
    end
    save
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
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
