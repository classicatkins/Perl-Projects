#!/usr/bin/perl
use strict;
use warnings;

# Array
my @fruits = ('Apple', 'Banana', 'Cherry', 'Date');
print "Array of fruits:\n";
print join(", ", @fruits), "\n";

# Add an element to the array
push(@fruits, 'Elderberry');
print "Array after adding an element:\n";
print join(", ", @fruits), "\n";

# Hash
my %fruit_colors = (
    Apple => 'Red',
    Banana => 'Yellow',
    Cherry => 'Red',
    Date => 'Brown'
);
print "\nHash of fruit colors:\n";
while (my ($fruit, $color) = each %fruit_colors) {
    print "$fruit: $color\n";
}

# Add an element to the hash
$fruit_colors{Elderberry} = 'Purple';
print "\nHash after adding an element:\n";
while (my ($fruit, $color) = each %fruit_colors) {
    print "$fruit: $color\n";
}

# Nested data structure: Hash of Arrays
my %fruit_varieties = (
    Apple => ['Fuji', 'Gala', 'Honeycrisp'],
    Banana => ['Cavendish', 'Plantain'],
    Cherry => ['Bing', 'Rainier']
);
print "\nHash of Arrays (fruit varieties):\n";
while (my ($fruit, $varieties) = each %fruit_varieties) {
    print "$fruit varieties: ", join(", ", @$varieties), "\n";
}

# Add a variety to an existing fruit
push(@{$fruit_varieties{Apple}}, 'Granny Smith');
print "\nHash of Arrays after adding a variety:\n";
while (my ($fruit, $varieties) = each %fruit_varieties) {
    print "$fruit varieties: ", join(", ", @$varieties), "\n";
}

# Array of Hashes
my @fruit_data = (
    { name => 'Apple', color => 'Red', price => 1.2 },
    { name => 'Banana', color => 'Yellow', price => 0.5 },
    { name => 'Cherry', color => 'Red', price => 2.0 },
    { name => 'Date', color => 'Brown', price => 3.0 }
);
print "\nArray of Hashes (fruit data):\n";
foreach my $fruit (@fruit_data) {
    print "Name: $fruit->{name}, Color: $fruit->{color}, Price: $fruit->{price}\n";
}

# Add a new fruit to the array of hashes
push(@fruit_data, { name => 'Elderberry', color => 'Purple', price => 1.5 });
print "\nArray of Hashes after adding a new fruit:\n";
foreach my $fruit (@fruit_data) {
    print "Name: $fruit->{name}, Color: $fruit->{color}, Price: $fruit->{price}\n";
}