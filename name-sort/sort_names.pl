#!/usr/bin/perl
use strict;
use warnings;

# Check if the correct number of arguments is provided
if (@ARGV != 2) {
    die "Usage: $0 input_filename output_filename\n";
}

# Get the input and output filenames from the command line arguments
my ($input_filename, $output_filename) = @ARGV;

print "Reading from: $input_filename\n";
print "Writing to: $output_filename\n";

# Open the input file for reading
open(my $in_fh, '<', $input_filename) or die "Could not open file '$input_filename' $!";

# Read the contents of the file into an array
my @names = <$in_fh>;

# Close the input file handle
close($in_fh);

# Remove newline characters from each line
chomp(@names);

# Debug: print the names read from the file
print "Names read from file:\n";
print "$_\n" for @names;

# Sort the names alphabetically
my @sorted_names = sort @names;

# Debug: print the sorted names
print "Sorted names:\n";
print "$_\n" for @sorted_names;

# Open the output file for writing
open(my $out_fh, '>', $output_filename) or die "Could not open file '$output_filename' $!";

# Write the sorted names to the output file
foreach my $name (@sorted_names) {
    print $out_fh "$name\n";
}

# Close the output file handle
close($out_fh);

print "Names sorted and written to '$output_filename'\n";
