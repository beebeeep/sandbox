#/usr/bin/perl

use strict;
use warnings;

use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common;
use Data::Dumper;
use JSON;

my $ua = LWP::UserAgent->new();


my $req1 = GET 'https://api.github.com/repos/beebeeep/sanbox/hooks';
$req1->authorization_basic("beebeeep", "theidaiRoghei0ai");

#my $req2 = HTTP::Request->new(POST => 'http://migalin.net/test.php');
my $req2 = HTTP::Request->new(POST => 'https://api.github.com/repos/beebeeep/sanbox/hooks');
$req2->content( to_json( { 
			name => 'web',
			active => 'true',
			events => ['pull_request', 'push'],
			config => {
				url => "http://git.welltime.ru/api/hook.php"  
			}
		}));
$req2->authorization_basic("beebeeep", "theidaiRoghei0ai");

my $response = $ua->request($req2);

print Dumper($response);

my $payload = from_json($response->content);

print Dumper($payload);



