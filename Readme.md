#TaxionDemand
TaxionDemand is a webapp developed using rails and uses postgres as the database <br />

###Problem Statement
* You are the proprietor of TaxiOnDemand, an on call taxi service.
* You have a fleet of cabs at your disposal, and each cab has a location, determined by it’s latitude and longitude.
* A customer can call one of your taxis by providing their location, and you must assign the nearest taxi to the customer.
* When the cab is assigned to the customer, it can no longer pick up any other customers.
* If there are no taxis available, you reject the customers request.
* The customer ends the ride at some location. The cab waits around outside the customer’s house, and is available to be assigned to another customer.
* Front end showing me all the cars available"

###Prerequiste
1. You need to have RubyonRails installed with version greater than 3.0x
2. You need to have Postgres installed

###Getting Started
1. git clone git@bitbucket.org:akanksha007/taxiondemand.git
2. cd TaxionDemand
3. rake db:setup
4. rail s
5. In the browser http://localhost:3000/book_cab/:user_id
6. You can view the list of all unreserved and booked cab at http://localhost:3000/show

###Relevant Information
1. App uses preflooded model cab and user.
2. Shortest distance using between two points using latitude and longitude is determined using 'geokit-rails'
3. Single user i.e. user_id is allowed to book a single cab

