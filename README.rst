.. image:: https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/6sided_dice.jpg/256px-6sided_dice.jpg

Shuffle
=======

Shuffle is a simple script that reorders pages of a PDF such that it
is easier to print with multiple pages on a sheet, with the intention
of cutting the printed pages and forming it into a mini book.

A preset layout for 4 pages on one side of a sheet is included in the
script.  Besides keeping track of front and back of each page, it also
ensures reordering the pages leaves sufficient margin for binding the
pages into book form when you cut each printed page into 4 mini pages.

I typically use it to print out camera manuals, which I then bind and
carry around in my backpack.  The last such manual has survived about
six years without any significant damage :upside_down_face:

Dependencies
------------

Both the Python :snake: and shell script uses ``qpdf``.  The Python
script additionally uses the Python bindings for ``pikepdf``, and the
shell script depends on ``LaTeX`` to generate blank pages for padding.

If you are using the shell script version, there is a ``Makefile``
that you can use to generate the blank page conveniently.  You can
override the default LaTeX binary by overriding the ``LATEX`` variable
in the ``Makefile``::

  $ LATEX=/opt/texlive/2020/bin/x86_64-linux/xelatex make blank.pdf

Caveats
-------

For now only ISO paper sizes from the A and B series are supported.
As it is quite common, the Japanese variation of the B series should
also be included, but I could not find the paper size dimensions in
PDF units (points).

Even though sizes larger than A4 do not really make sense for my use
case, I have left them in, because who knows how some other use case
might crop up for this tool.

Shell script version
--------------------

In the ``archive`` directory you can find an older shell script that
does the same, but requires a bit of fiddling.  It also relies on
LaTeX to insert blank pages where needed.

*The image is licensend under the Creative Commons Attribution-Share
 Alike license, thanks to* `Wikimedia Commons`_.

.. _Wikimedia Commons: https://commons.wikimedia.org/wiki/File:6sided_dice.jpg
