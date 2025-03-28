#! /bin/perl
#
# Merge lines in a USFM.sty record into a single line for sorting.
#
while(<>)
{
    chomp;

    if (/^$/)
    {
	print "$line\n";
	$line = "";
    }
    else
    {
	if (/\\/)
	{
	    $line .= $_;
	}
    }
}
