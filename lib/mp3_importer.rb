class MP3Importer

	attr_accessor :path, :size

	def initialize(file_path)
		#array
		@path = Dir[file_path].join

	end

	def files
		#load all mp3s at self.file_path

		#dir.entries gives us the array
		Dir.entries(@path).select do |file|
			file.split(".").last == "mp3"
		end
	end



	def import
		files.each do |mp3|
			binding.pry
			Song.new_by_filename(mp3)
		end
	end




end
