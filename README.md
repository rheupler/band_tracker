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

Legal

Copyright (c) 2015 Ryan Heupler

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
