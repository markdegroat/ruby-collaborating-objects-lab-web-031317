require 'pry'

class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
		#binding.pry
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def add_song(song)
		@songs<< song
	end


	def self.find_or_create_by_name(artist_name)

		@@all.each do |artist|
			if artist.name == artist_name
				return artist
				# return this item
			end
		end

		#if we get to this point in the program, name has not been found
		return self.new(artist_name)

	end

	def print_songs
		self.songs.each do |song|

			puts song.name
		end


	end



end
