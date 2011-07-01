nosh
====

Description
-----------

A very simple Typhoeus/Nokogiri wrapper. Conceptually based on the eat library.

Usage
-----

    require 'nosh'
    
    nosh("http://www.google.com/")        #=> Response body as string
    "http://www.google.com/".nosh         #=> same
    
    nosh("http://www.google.com/", true)  #=> Parsed Nokogiri XML/HTML document
    "http://www.google.com/".nosh(true)   #=> same
    
    nosh("http://httpstat.us/301")        #=> Prints status code and message
    "http://httpstat.us/301".nosh         #=> same

Requirements
------------
* Typhoeus (v0.2.4)
* Nokogiri (v1.4.6)

Install
-------

    $ gem install nosh

Copyright
---------

Copyright (c) 2011 Ezekiel Templin

See LICENSE.txt for details.
