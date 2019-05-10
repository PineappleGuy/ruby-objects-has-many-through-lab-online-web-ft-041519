require 'pry'
class Artist

  attr_accessor :name

  @@all = []
  @@songs = []
  @@genres = []
  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #@@songs << song
    #@@genres << genre
  #binding.pry
  end

  def songs
    @songs = []
    Song.all.each do |song|
      @song << song
    end
    @songs
  end

  def genres
    
  end
end
