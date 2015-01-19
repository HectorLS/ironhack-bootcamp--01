toast = Proc.new do
  puts 'Aplausos'
end

def method_one
	puts "Lalalalala"
end

toast.call
toast.call
toast.call

method_one.call