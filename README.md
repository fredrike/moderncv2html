moderncv2html -  a style file for latex2html for moderncv LaTeX documents
==
Fredrik Erlandsson, fredrik.erlandsson@bth.se

moderncv2html is a helper script for [**latex2html**](http://www.ctan.org/pkg/latex2html) to support the [**moderncv**](http://www.ctan.org/pkg/moderncv) LaTeX class.

Prerequisites
--
* LaTeX
* latex2html

Using brew on Mac OS X it is possible to install *latex2html* by just

`brew install latex2html`

Usage
--
A simple use can look like this, note that the path to your cloned repository of moderncv2html.

`latex2html -split 0 -nonavigation -style https://raw.github.com/fredrike/moderncv2html/master/moderncv.css -title "My CV" -noinfo -noaddress -init_file moderncv2html/moderncv.perl  My_CV.tex`

Based on your environment perhaps the following parameters are needed:
`-html_version 4.0,latin1,unicode`
