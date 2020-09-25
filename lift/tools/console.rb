require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jon = Passenger.new("Jon")
tim = Passenger.new("Tim")
bill = Passenger.new("Bill")
ed = Passenger.new("Ed")

jeff = Driver.new("Jeff")
don = Driver.new("Don")

r1 = Ride.new(jon, jeff, 50.4)
r2 = Ride.new(tim, jeff, 20.2)
r3 = Ride.new(bill, don, 53.8)
r4 = Ride.new(ed, don, 101)
r5 = Ride.new(jon, don, 50)
r6 = Ride.new(tim, don, 25.2)

binding.pry
0