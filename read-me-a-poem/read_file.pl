#!/usr/bin/perl
use strict;
use warnings;

# Check if the correct number of arguments is provided
if (@ARGV != 1) {
    die "Usage: $0 filename\n";
}

# Get the filename from the command line arguments
my $filename = $ARGV[0];

# Open the file for reading
open(my $fh, '<', $filename) or die "Could not open file '$filename' $!";

# Read and print the file contents
while (my $line = <$fh>) {
    print $line;
}

# Close the file handle
close($fh); 
