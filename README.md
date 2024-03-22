# abstract datatype deferred override example for Fortran

I've been struggling with the syntax of derived types, inheritance (extension), and so on with Fortran. The concepts are easy, but Modern Fortran is new to me. Seeking a concrete example to work from, I found a reasonable description with code snippets that I could massage into compilable and executable code at [Fortran.Cat -- Deferred Overloading in Derived Type](https://fortran.cat/2021/10/04/deferred-overloading-in-derived-type/).

The bulk of the code is straight from the post by Lincador at Fortran.Cat. I made everything lower case and split it into three files: one module file for each type, and a main program to drive some quick tests. 

## AUTHORSHIP, LICENSING, AND COPYRIGHT

I found no copyright or license at Fortran.Cat, and I make no claim beyond my usual "anything I added is freely available, anything derived keeps its original licensing and rights":

Some or all of the code in this project is by Troy Brumley (BlameTroi). Prior work preserves its original licensing and author copyrights. My work is Copyright 2023 by Troy Brumley, all rights reserved, and licensed under the UNLICENSE.

Troy Brumley
blametroi@gmail.com

So let it be written. So let it be done.
