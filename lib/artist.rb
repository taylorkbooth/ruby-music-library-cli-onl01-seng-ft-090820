class Artist 
  
    @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    song = self.new(name)
    song.save
    song
  end
  
  def self.find_by_name(name)
        @@all.detect{|s| s.name == name}
    end

  def self.find_or_create_by_name(name)
      if song = find_by_name(name) 
         song
      else
         song = Song.create(name)
      end
    end
    
  def self.destroy_all
    @@all = []
  end
  
  def songs
    @songs
  end
  
end