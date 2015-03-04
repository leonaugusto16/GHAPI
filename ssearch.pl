#!/usr/bin/perl
#
# Uso: ./ssearch.pl FILE_TO_SEARCH WORDLIST
#
#

use strict;

open(SEARCHFILE,$ARGV[0]) || die("Can not open searchﬁle because $!");

open(WORDFILE,$ARGV[1]) || die("Can not open wordﬁle because $!");


my @WORDS = <WORDFILE>; 

close(WORDFILE);

my $LineCount = 0;

while(<SEARCHFILE>) {
	foreach my $word (@WORDS) {
		chomp($word);
		++$LineCount;

		if(m/$word/) {
			print "$&\n";
			last;
		}
	}
}

close(SEARCHFILE);
