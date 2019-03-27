class Artist
  attr_accessor :songs, :name
  @@all=[]
  def initialize(name)
    @songs=[]
    @name=name 
    @@all << self
  end
  
  def add_song(song)
    song.artist=self
    @songs << song
  end
  
  def add_song_by_name(name)
    song=Song.new(name)
    song.artist=self
    @songs << song
  end
  
  def self.song_count
    count=0 
    @@all.each {|artist| count += artist.songs.size}
    count
  end
end 