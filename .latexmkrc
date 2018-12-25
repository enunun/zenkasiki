#!/usr/bin/perl
$latex = 'uplatex -guess-input-enc -src-specials -interaction=nonstopmode -synctex=1';
$latex_silent = 'uplatex -interaction=batchmode';
$dvips = 'dvips';
$bibtex = 'pbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$makeindex = 'upmendex -r -c -s jind.ist';
$dvi_previewer = 'start dviout'; # -pv option
$dvipdf = 'dvipdfmx %O -o %D %S';
if ($^O eq 'darwin') {
    $pdf_previewer = 'open -a Preview %S';
} elsif ($^O eq 'linux') {
    $pdf_previewer = 'evince';
}
$preview_continuous_mode = 1;
$pdf_mode = 3;
$pdf_update_method = 4;
