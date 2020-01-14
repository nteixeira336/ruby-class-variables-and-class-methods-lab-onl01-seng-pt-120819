class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count=0 
  
  def initialize (name, artist, genre)
    @name= name
    @artist= artist
    @@artists<< artist 
    @genre= genre 
    @@genres<< genre 
    @@count+=1 
    
  end
  
  def self.count 
    @@count 
  end 
  
  @@genres= [ ]
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
  @@artists= [ ]
  
  def self.artists 
    artists= { } 
    @@artists.each do |artist|
      if artists[artist]
        artists[artist] +=1 
      else
        artists[artist] =1 
      end 
    end 
    artists 
  end 
  
end 
  
  
