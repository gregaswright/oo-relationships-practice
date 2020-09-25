require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bill = Guest.new("Bill")
billy = Guest.new("Bill")
fred = Guest.new("Fred")
ted = Guest.new("Ted")
ed = Guest.new("Ed")

seattle = Listing.new("Seattle")
sf = Listing.new("San Francisco")
ny = Listing.new("New York")
atlanta = Listing.new("Atlanta")

t1 = Trip.new(bill, seattle)
t2 = Trip.new(bill, sf)
t3 = Trip.new(fred, seattle)
t4 = Trip.new(ted, ny)
t5 = Trip.new(ed, atlanta)
t6 = Trip.new(ed, seattle)
t7 = Trip.new(ed, ny)

binding.pry
0