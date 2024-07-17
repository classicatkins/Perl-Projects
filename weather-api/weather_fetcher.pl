#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use JSON;

# API Key and Base URL Configuration
my $api_key = 'your_api_key_here';  # Replace with your actual API key
my $base_url = 'http://api.openweathermap.org/data/2.5/weather';

# User Input for City
print "Enter the name of the city: ";
chomp(my $city = <STDIN>);

# Send API Request
my $ua = LWP::UserAgent->new;
my $response = $ua->get("$base_url?q=$city&appid=$api_key&units=metric");

# Check Response and Extract Data
if ($response->is_success) {
    my $weather_data = decode_json($response->decoded_content);
    print "Current temperature in $city: " . $weather_data->{'main'}{'temp'} . " °C\n";
} else {
    die "Failed to get weather data: " . $response->status_line;
}
