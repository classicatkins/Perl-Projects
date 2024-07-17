#!/usr/bin/perl

use strict;
use warnings;
use WWW::Mechanize;
use HTML::TreeBuilder;

# Create a new instance of Mechanize
my $mech = WWW::Mechanize->new();

# URL of the website to scrape
my $url = 'http://books.toscrape.com/';

# Fetch the webpage
$mech->get($url);

# Check if the fetch was successful
unless ($mech->success) {
    die "Failed to retrieve the webpage: $url";
}

# Parse the HTML content of the page
my $tree = HTML::TreeBuilder->new_from_content($mech->content);

# Open a file to write the output
open(my $fh, '>', 'books_data.txt') or die "Could not open file: $!";

# Find all book entries on the page
foreach my $book ($tree->look_down(_tag => 'article', class => 'product_pod')) {
    my $title = $book->look_down(_tag => 'h3')->find('a')->attr('title');
    my $price = $book->look_down(_tag => 'p', class => 'price_color')->as_text;
    print $fh "Title: $title, Price: $price\n";
}

# Close the file handler and clean up
close $fh;
$tree->delete;

print "Scraping completed. Check 'books_data.txt' for output.\n";
