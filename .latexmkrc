#!/usr/bin/perl
$latex            = 'uplatex -shell-escape -synctex=1 -halt-on-error';
$latex_silent     = 'uplatex -shell-escape -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex 				= 'upbibtex';
$dvipdf 				= 'dvipdfmx %O -o %D %S';
if ($^O eq 'darwin') {
    $pdf_previewer = 'open -a Preview %S';
} elsif ($^O eq 'linux') {
    $pdf_previewer = 'evince';
}
$pdf_mode = 3;
