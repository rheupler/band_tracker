Band Tracker
by Ryan Heupler

This app lets users enter in any band they choose and add venues that the band has played at.

Installation

Install band_tracker by first cloning the repository.

$ git clone http://github.com/rheupler/band_tracker

Type 'bundle' into terminal to install requried gems.

Install and start PostGres on system

$ brew install postgres

Run Databases by typing:
db:create to create the databases
db:migrate to create tables


To start the Postgres server, simply run:
postgres

Start the webserver:

$ ruby app.rb
In your web browser, go to http://localhost:4567


Support
-------

This app is a work in progress.  By no means is it complete. However, if you are having issues, please let me know at: rheupler@gmail.com

Technologies Used
_________________

Written in Ruby
Site runs on Sinatra
Error checking with RSpec and Capybara
Database management with postgresql
Object Modeling with ActiveRecord

License
=======

Free and OS License. Code for the people by the people. 2015 Ryan Heupler
