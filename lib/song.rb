class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist  = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.eact do |artist|
      unique_artists << artist if !unique_artists.include?(artist)
    end
    unique_artists
  end
end
