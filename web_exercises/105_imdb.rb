#encoding: utf-8
require 'imdb'

class Reader
	def initialize(movies_src)
		movies_file = IO.read(movies_src)
		@movies_list = movies_file.split("\n")
	end

	def get_movie_content
		@movies_list
	end

	def show_movie_info(name_movie)
		@searcher = Searcher.new(self).get_info(name_movie)
	end
end

class Searcher
	def initialize(movies_list)
		@movies_list = movies_list
	end

	def get_info(name_movie)
		movie_chosen = Imdb::Search.new(@movies_list)
		movie_chosen.title
		movie_chosen.rating
	end

	def add_hash(rating)
		@rating = rating
		case @rating
		when <= 1.0
			puts "#"
		when <= 2.0
			puts "##"
		when <= 3.0
			puts "###"
		when <= 4.0
			puts "####"
		when <= 5.0
			puts "#####"
		when <= 6.0
			puts "######"
		when <= 7.0
			puts "#######"
		when <= 8.0
			puts "########"
		when <= 9.0
			puts "#########"
		when 10
			puts "##########"
		else
			puts "This movie sucks"
		end
	end
end

	


movies_reader = Reader.new("movies.txt")

puts movies_reader.show_movie_info(1)



# https://github.com/ariejan/imdb/blob/master/lib/imdb/base.rb#L137


#i = Imdb::Search.new("El Padrino")
#i.rating