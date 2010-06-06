What is this?
=============

At the moment this is just a fun project. The intention is to build a light-weight base for LiquidFeedback API client applications, as well as to add some useful features like e.g. statistics and valuable LF tools.

More information on LiquidFeedback: <http://www.public-software-group.org/liquid_feedback>  
This is what (part of) the frontend currently looks like: <http://img.skitch.com/20100606-r85edfmp742brbi6t38sxwjwb3.jpg>

Dependencies
============

* Rails 3
* Bundler
* MongoDB

Getting started
===============

With the Rails 3 and Bundler gems installed and a MongoDB running on localhost, just follow these steps to get the application running:

1. Clone the repository and cd to the app dir:

        $ git clone git://github.com/skddc/liquid_interface.git  
        $ cd liquid_interface

2. Install the app dependencies:

        $ bundle install

3. Add your LiquidFeedback API key to config/initializers/config.rb

4. Use the following rake task to import issues and initiatives (currently only from lqpp.de/be):

        $ rake liquid:sync

5. Start the server:

        $ rails server

6. Point you browser to <http://localhost:3000> and enjoy (only /issues has content at the moment).