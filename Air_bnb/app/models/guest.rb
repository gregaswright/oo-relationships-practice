class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{|trip| trip.guest == self}
    end

    def listings
        self.trips.map{|trip| trip.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_travler
        self.all.max_by{|guest| guest.trip_count}
    end

    def self.find_all_by_name(name)
        self.all.find_all{|guest| guest.name == name}
    end

end