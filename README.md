Huh?
====

At the moment this is just a fun project. The intention is to build a light-weight base for LiquidFeedback API client applications, as well as to add some useful features like e.g. statistics and valuable LF tools.

More information on LiquidFeedback: http://www.public-software-group.org/liquid_feedback

Dependencies
============

* Rails 3
* MongoDB

Getting started
===============

With the latest Rails 3 beta gem installed and a MongoDB running on localhost, just follow these steps to get the application running:

1. Clone the repository and cd to the app dir:

    $ git clone git://github.com/skddc/liquid_interface.git
    $ cd liquid_interface

2. Install the app dependencies:

    $ bundle install

3. Use the custom rake task to import issues and initiatives:

    $ rake liquid:sync

4. Start the server:

    $ rails server

5. Point you browser to localhost:3000 and enjoy (only /issues has content at the moment).