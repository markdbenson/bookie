#!/usr/bin/env perl

use strict;
use warnings;
use URI::Escape qw(uri_escape_utf8);
use open IO  => ":utf8", ":std";

my $src = do { local $/; <> };

$src =~ s{^// ?javascript:.+\n}{};
my $bookmarklet = $src;

for ($bookmarklet) {
    s{^\s*//.+\n}{}gm;  # Kill comments.
    s{\t}{ }gm;         # Tabs to spaces
    s{[ ]{2,}}{ }gm;    # Space runs to one space
    s{^\s+}{}gm;        # Kill line-leading whitespace
    s{\s+$}{}gm;        # Kill line-ending whitespace
    s{\n}{}gm;          # Kill newlines
}

$bookmarklet = "javascript:" .
    uri_escape_utf8($bookmarklet, qq('" \x00-\x1f\x7f-\xff));

print "// $bookmarklet\n" . $src;

`/bin/echo -n '$bookmarklet' | /usr/bin/pbcopy`;

