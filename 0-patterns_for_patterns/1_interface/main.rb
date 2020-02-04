require_relative "car"
require_relative "plane"
require_relative "vehicle"

# Bad

my_car = Car.new
my_car.drive(200)

## Deal with cars and planes

car = Car.new
car.drive(100)

plane = AirPlane.new
plane.fly(200)

# Good - Apply interfaces
good_car = Vehicle.new
good_car.travel(200)

good_plane = Vehicle.new
good_plane.travel(200)
