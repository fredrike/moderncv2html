# LaTeX2HTML 2008 (1.71)
# Associate sections original text with physical files.


$key = q/1 0 0 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '4%:%'."$dir".q|template.html%:%Vocational%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%About this document ...%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Experience%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Computer skills%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Master thesis%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '0%:%'."$dir".q|template.html%:%template%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Extra 1%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Education%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '4%:%'."$dir".q|template.html%:%Miscellaneous%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Interests%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Languages%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Bibliography%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

$key = q/1 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0/;
$section_info{$key} = '3%:%'."$dir".q|template.html%:%Extra 2%:%| unless ($section_info{$key}); 
$noresave{$key} = "$nosave";
$done{"${dir}template.html"} = 1;

1;

