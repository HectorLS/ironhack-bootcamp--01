#encoding: utf-8

class Blog

	def initialize
		@post_list = [] #Create an array for the posts
	end

	def add_post(title_value, text_value, date_value, vip_value = false)
		@post_list << Post.new(title_value, text_value, date_value, vip_value)  #this push post into the array
	end

	def front_page
		@post_list.sort! {|a,b| a.date <=> b.date}

		puts " "
		puts "THE POST"
		puts " "

		@post_list.each do |thepost|
			
			if thepost.sponsored
				puts "*******#{thepost.title}**********"
			else
				puts thepost.title
			end
			puts "(" + thepost.date.to_s + ")"
			puts "**************"
			puts thepost.text
			puts "--------------"
			puts " "
		end
	end
end

class Post
	#Define the variables that we need
	attr_accessor :title, :text, :date, :sponsored
	attr_reader :date

	#Execute those instance variables to can give a new object created the proper values 	
	def initialize(title_value, text_value, date_value, vip_value = false)
		@title = title_value
		@text = text_value
		@date = date_value
		@sponsored = vip_value
	end
end

myblog = Blog.new

myblog.add_post("Post Zero", 	"RUBYYYYYYYYYYY RUBYYYYYYYYYYYY", 	Time.mktime(1976, 8, 3, 10, 30))
myblog.add_post("Post Two", 		"este es el texto del post", 		Time.mktime(3456, 12, 25, 14, 30), true)
#The post number Two and One has the same Y M D but different hours.
myblog.add_post("Post One", 	"zzzzzzzzzzzzzzzzzzzzzzz",  		Time.mktime(3456, 12, 25, 01, 30))
myblog.add_post("Post Three", 	"zzzzzzzzzzzzzzzzzzzzzzz",  		Time.mktime(7777, 6, 15, 16, 30))


puts myblog.front_page.to_s