#!/usr/bin/perl
#
# Uso: ./ssearch.pl TROLLEMAIL WORDLIST
#
#

use strict;

open(TROLLEMAIL,$ARGV[0]) || die("Can not open TROLLEMAIL because $!");

open(WORDFILE,$ARGV[1]) || die("Can not open WORDFILE because $!");


my @WORDS = <WORDFILE>; 

close(WORDFILE);

my $LineCount = 0;

while(<TROLLEMAIL>) {
	foreach my $word (@WORDS) {
		chomp($word);
		++$LineCount;

		if(m/$word/) {
			print "$&\n";
			last;
		}
	}
}

close(TROLLEMAIL);
