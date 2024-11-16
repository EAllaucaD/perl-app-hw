# app.pl
use strict;
use warnings;
use HTTP::Server::Simple::CGI;

# Define a class for the web server
{
    package HelloWorldWebServer;
    use base 'HTTP::Server::Simple::CGI';

    sub handle_request {
        my ($self, $cgi) = @_;
        print "HTTP/1.0 200 OK\r\n";
        print $cgi->header('text/plain');
        print "Hello World\n";
    }
}

# Start the server on port 8080
my $server = HelloWorldWebServer->new(8081);
$server->run();
