class Genre
<<<<<<< HEAD
  attr_accessor :song
  attr_reader :name, :genre

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end
=======
>>>>>>> 5321e552df5e9e30de7059a4d7a76e53dad83adc
end
