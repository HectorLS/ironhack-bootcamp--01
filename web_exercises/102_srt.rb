require 'time'

class Srt

attr_accessor :id_seq, :start_time, :end_time, :text

	def initialize(filename)
		subs_content = IO.read(filename)  
		sequences = subs_content.split("\r\n\r\n").map do |sequences_line| #This array gonna contain all sequences
			@sequences_object = sequences_line.split("\n")
			puts @sequences_object
		end
	end
=begin
=> ["1\r\n00:00:01,406 --> 00:00:03,220\r\nPreviously on \"Resurrection\"...",
 "2\r\n00:00:03,274 --> 00:00:04,219\r\nWhat did you do?",
 "3\r\n00:00:04,245 --> 00:00:08,456\r\nDid you honestly think I'd hurt my own\r\ngrandson? I tried to protect you.",
 "4\r\n00:00:08,478 --> 00:00:10,145\r\nNo wonder you both hate me,",
 "5\r\n00:00:10,179 --> 00:00:14,116\r\nbecause deep down, I've\r\nalways hated both of you.",
 "6\r\n00:00:14,283 --> 00:00:16,425\r\nAt least you're finally\r\ntelling the truth.",
 "7\r\n00:00:16,657 --> 00:00:17,539\r\nWith no one to claim her,",
 "8\r\n00:00:17,565 --> 00:00:19,945\r\n- she'll have to go to the government.\r\n- I don't care.",
 "9\r\n00:00:19,994 --> 00:00:23,815\r\nAre you blaming me? I never\r\nblamed you for Jacob's death!",
 "10\r\n00:00:23,842 --> 00:00:25,385\r\n =========== END =========",
 "\r\n"]
=end
# Now we want to split ID seq, the dates (both, gonna split later) and the text
end



mysubs = Srt.new("tvshow.srt") #Game_of_Thrones_-_01x01_-_Pilot
puts mysubs