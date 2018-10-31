# README

This project was developed out of a need and desire to create more interest and community around the astronomy community. One of the most exciting events in astronomy is the Star Party. Typically, this is when people gather, and with the help of an expert and a telescope, they learn and admire the sights in the night sky. Sounds exciting, but the problem is finding these parties! Sometimes you can find a stray post on meetup or a local astronomical society website, but you have to spend too much time searching just to find an event near you.  Enter the StarParty app, where anyone can create a Star Party or search for a Star Party all from one easy to use app! 

Built by:
Becca Hyland: github.com/BeccaHyland
Ben Ghalami: github.com/bghalmi
Matt Peters: github.com/wehttamclan
Kathleen Yruegas: github.com/KathleenYruegas

![Image of Landing Page](https://github.com/BeccaHyland/star_party/blob/master/app/assets/images/Landing%20Page.png)

To use the app, simply visit https://star-party.herokuapp.com/ and start browsing around!

You can also clone down this repo and play with the code! 

* Technologies used:
  - Ruby 2.4.2
  - Rails 5.1.6

* System dependencies
  - `gem 'area'` https://github.com/jgv/area 
    - allows us to easily convert zip codes to latituges and longitudes 
  - `gem 'faraday'` https://github.com/lostisland/faraday
    - for making our API calls
  
  To user our app on your local, you will need two API Keys:
    - https://api.nasa.gov/index.html#apply-for-an-api-key (can be requested for free)
      - NASA API used to pull the background image, the NASA Astronomy Picture of the Day.
    - https://darksky.net/dev/docs (can be resquested for free)
      - Dark Sky API used for all weather and moon related information.
  

* Configuration
  To clone down and configure this project on your local, follow these steps in your terminal:
  ```
     1. git clone git@github.com:BeccaHyland/star_party.git
     2. bundle install
     3. bundle update
     4. rake db:{create,migrate,seed} 
     (Running seed is optional. If run, it will load a few fake parties for display 
     and development purposes.)
     ```


* How to run the test suite
  This project uses RSpec for its test suite. To run the test, cd into the root of the project and run ```rspec```.

* Services (job queues, cache servers, search engines, etc.)


# Api endpoints
## RESTful API routes
#### `/api/v1/parties/:id`
* Return data from an individual Star Party. 

#### `/api/v1/parties`
* Return data from all Star Party.

## Search API routes
Use search parameters to find specific Star Parties.
#### `/api/v1/parties/find`
* Find data for an individual Star Party matching search parameters.

#### `/api/v1/parties/find_all`
* Find data for all Star Parties matching search parameters.
