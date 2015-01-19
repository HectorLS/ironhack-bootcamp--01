
car1 = "Ferrari"
car2= "Seat"
car3= "Hyundai"

cars = [car1,car2,car3]


sounds = ["Broom", "Meek", "Nyan"]
cars = sounds.map {|sound| Car.new(sound)}