class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def name
    @name
  end

  def genre
    @genre
  end

  def artist
    @artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.map do |g|
      [g, @@genres.count(g) ]
    end.to_h
  end

  def self.artist_count
    @@artists.map do |a|
      [a, @@artists.count(a) ]
    end.to_h  
  end
end
