require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    song = Song.new(split_filename[1])
    song.artist = Artist.find_or_create_by_name(split_filename[0])
    song.Artist.add_song(song)
    song
    #binding.pry
  end
end
