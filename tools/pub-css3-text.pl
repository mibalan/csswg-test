#!/usr/bin/perl
# pub-css3-text
# Script for cleaning up the repository prior to building the CSS Text test suite.

use File::Path;

rmtree('dist/css3-text');

# approved/ directory is ready already and built automatically


@dirs = (); # extra (unreviewed test) directories

# Prep by Contributor:

###############################################################################
# Adobe

###############################################################################
# Apple - No CSS2.1 tests

###############################################################################
# Tim Boland - Not used

###############################################################################
# Boris Zbarsky

###############################################################################
# John Daggett

###############################################################################
# David Baron

###############################################################################
# Mozilla

###############################################################################
# East Tokyo

push @dirs, 'contributors/east-tokyo/submitted/css3-text';

###############################################################################
# Eira Monstad

###############################################################################
# Gabriele Romanato

###############################################################################
# Gérard Talbot

###############################################################################
# Ian Hickson

###############################################################################
# i18n WG (Richard Ishida)

###############################################################################
# James Hopkins

###############################################################################
# Hewlett-Packard

###############################################################################
# fantasai

###############################################################################
# CSSWG Issues

###############################################################################
# Microsoft

###############################################################################
# Opera

###############################################################################
# TTWF

push @dirs, 'contributors/ttwf_seattle/dstorey/submitted';


###############################################################################

$dirlist = join ' ', @dirs;
print `python tools/build-css3-text.py $dirlist 2>&1`;
print `find dist/css3-text -type f -exec chmod 644 {} \\;`;

