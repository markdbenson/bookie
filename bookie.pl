#!/usr/bin/env perl

use strict;
use warnings;
use URI::Escape qw(uri_escape_utf8);
use open IO  => ":utf8", ":std";

my $src = do { local $/; <> };

$src =~ s{^// ?javascript:.+\n}{};
my $bookmarklet = $src;

for ($bookmarklet) {
    s{^\s*//.+\n}{}gm; # Remove comments
    s{\t}{ }gm;        # Convert tabs to spaces
    s{[ ]{2,}}{ }gm;   # Collapse spaces
    s{^\s+}{}gm;       # Remove leading whitespace
    s{\s+$}{}gm;       # Remove trailing whitespace
    s{\n}{}gm;         # Remove newlines
}

$bookmarklet = "javascript:" .
    uri_escape_utf8($bookmarklet, qq('" \x00-\x1f\x7f-\xff));

print "// $bookmarklet\n" . $src;

`/bin/echo -n '$bookmarklet' | /usr/bin/pbcopy`;

