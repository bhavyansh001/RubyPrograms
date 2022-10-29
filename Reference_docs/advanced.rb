# RegEx

# line1 = "Cats are smarter than dogs";
# line2 = "Dogs also like meat";

# if ( line1 =~ /Cats(.*)/ )
#    puts "Line1 contains Cats"
# end
# if ( line2 =~ /Cats(.*)/ )
#    puts "Line2 contains  Dogs"
# end

# text = "rails are rails, really good Ruby on Rails"

# # Change "rails" to "Rails" throughout
# text.gsub!("rails", "Rails")
# puts text

# The sub & sub! replaces the first occurrence of the pattern and gsub & gsub! replaces all occurrences. The sub and gsub returns a new string, leaving the original unmodified where as sub! and gsub! modify the string on which they are called.

# db  User ID "testuser" and password "test123"
# require "dbi"

# begin
#    # connect to the MySQL server
#    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "testuser", "test123")
#    # get server version string and display it
#    row = dbh.select_one("SELECT VERSION()")
#    puts "Server version: " + row[0]
# rescue DBI::DatabaseError => e
#    puts "An error occurred"
#    puts "Error code:    #{e.err}"
#    puts "Error message: #{e.errstr}"
# ensure
#    # disconnect from server
#    dbh.disconnect if dbh
# end

# cgi

# require 'cgi'
# cgi = CGI.new

# puts cgi.header
# puts "<html><body>This is a test</body></html>"

#database

# require "dbi"

# begin
#    # connect to the MySQL server
#    dbh = DBI.connect("DBI:Mysql:TESTDB:localhost", "root", "test123")
#    # get server version string and display it
#    row = dbh.select_one("SELECT VERSION()")
#    puts "Server version: " + row[0]
# rescue DBI::DatabaseError => e
#    puts "An error occurred"
#    puts "Error code:    #{e.err}"
#    puts "Error message: #{e.errstr}"
# ensure
#    # disconnect from server
#    dbh.disconnect if dbh
# end

#smtp (sending mails)
# Ruby provides Net::SMTP class for Simple Mail Transfer Protocol (SMTP) client-side connection and provides two class methods new and start.
# Ruby makes it easy to write multi-threaded programs with the Thread class. Ruby threads are a lightweight and efficient way to achieve concurrency in your code.