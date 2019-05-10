require 'pry'
class Artist

  attr_accessor :name

  @@all = []
  @@genres = []
  def initialize(name)
    @name = name
    @songs = []
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
    Song.all.each do |song|
      if song.artist == self
        @songs << song
      end
    end
  end

  def genres

  end
end
