# Object Relations Practice

## Installation

Clone this repo from Github. CD into the main directory using your console and
run `bundle install` to install all Gem dependencies.

## Exercises

This repo contains domains for practicing building Object-Oriented
Relationships. The descriptions for these exercises are located in the
`exercises` directory. At the top of each file is a level indicating  the difficulty level
of the domain. Harder levels include more models or more
complex relationships. The harder models also include less explicit instructions
about what methods to write. You should work to derive the methods that need to
be defined from the relationship information given.

#### Average

- [Airbnb](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/airbnb.md)
- [Bakery](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/bakery.md)
- [Lyft](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/lyft.md)

#### Challenging

- [IMDB](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/imdb.md)
- [Crowdfunding](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/crowdfunding.md)
- [Gym](https://github.com/learn-co-curriculum/oo-relationships-practice/blob/master/exercises/gym.md)

## Writing Code

You should write all your code for these domains in files in the `app/models`
directory. You can create models for all of the challenges in there. If you name
the models as specified, none of the exercises should conflict with each other.

## Testing Your Code

We've provided you with a console that you can use to test your code. Write all
your code in the `app` folder so that it is loaded into the environment. To
enter a console session, run `ruby tools/console.rb`. You'll be able to test out
the methods that you write here.

## Creating Relationships

The complex relationships are not simple has_many_through or join relationships,
so take the time to plan them out and draw them. If you see multiple ways to
build those relationships, try both of them and see if you can identify benefits
and weaknesses to each of those domain models. During project mode (and as a
working developer) you will be responsible for building out domain models to
represent real-world situations. A poorly thought out domain can lead to brittle
code that requires a lot of maintenance and rewriting in the future.

## Level: Average
Deliverables
You are building an app for an Airbnb competitor

your models are listings, guests, trips
    a listing (i.e. a house or apartment) has many trips
        a listing has a city attribute which is a string of a city name, e.g. 'Seattle'
    a guest has many trips
    a trip belongs to a listing and a guest
    Write out the relationships using has_many, belongs_to and has_many_through. Create the necessary methods to connect these classes.

Listing
    #guests
        returns an array of all guests who have stayed at a listing
    #trips
        returns an array of all trips at a listing
    #trip_count
        returns the number of trips that have been taken to that listing
    .all
        returns an array of all listings
    .find_all_by_city(city)
        takes an argument of a city name (as a string) and returns all the listings for that city
    .most_popular
        finds the listing that has had the most trips 
Guest
    #listings
        returns an array of all listings a guest has stayed at
    #trips
        returns an array of all trips a guest has made
    #trip_count
        returns the number of trips a guest has taken
    .all
        returns an array of all guests
    .pro_traveller
        returns an array of all guests who have made over 1 trip
    .find_all_by_name(name)
        takes an argument of a name (as a string), returns the all guests with that name 
Trip
#listing
    returns the listing object for the trip
#guest
    returns the guest object for the trip
.all
returns an array of all trips