require 'pry'
require 'time'

class SRTProcess
	def initialize(file)
		@subtitles = IO.read(file)
	end

	def time_shift(milliseconds)
		@elements = @subtitles.split("\n\n")
		@elements.map! {|element| SRTElement.new(element)}
		@elements.each do |element|
			#puts "#{element.get_time_in} => #{element.time_shift(element.get_time_in, milliseconds)}"
			#puts "#{element.get_text}"
			puts element.create_element
		end
	end

end

class SRTElement
	def initialize(element)
		@element = element.split("\n")
	end

	def get_index
		@element[0]
	end

	def get_times
		@element[1].split("-->").map!{|e| e.strip}
	end

	def get_time_in
		get_times[0]
	end

	def get_time_out
		get_times[1]
	end

	def get_text
		@element[2..@element.size] # coge del elemento 2 al último.
	end

	def time_shift(time, milliseconds)
		(Time.parse(time) + milliseconds / 1000.0).strftime("%H:%M:%S,%L")
	end

	def create_element
		@element = get_index + "\n"
	end
end

subtitle = SRTProcess.new('tvshow.srt') #houseOfCardsS02E13
subtitle.time_shift(50)