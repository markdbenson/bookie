# Booky

Booky is a no-hassle bookmarklet generator.

A bookmarklet is a small software application stored as a bookmark in a web browser, which allows a user to interact with the currently-loaded web page in some way.

Write a bookmarklet is cumbersome because it lacks a good source code editing environment. Booky makes this easier by allowing you to write javascript using your favorite editor. Then, Booky converts that javascript code into a version that can be simply copy-pasted right into a browser bookmark in an easy way. 

## Installation

No installation. Just make sure you have a recent version of Perl.

## Usage

Customize booky.js, then run booky.pl on it. Example:

    $ vi booky.js
    $ make

At this point, the bookmarklet will be automatically copied to your
clipboard. All you need to do is to copy the contents to the bookmark
in your browser. For Chrome, do this:

    1. Create a bookmark
    2. Edit the bookmark
    3. Past the contents that Booky generates into the URL field
    4. Click save

## License and Copyright

LICENSE AND COPYRIGHT

The MIT License (MIT)

Copyright (c) 2014 Mark Benson <markbenson@vanilladraft.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

