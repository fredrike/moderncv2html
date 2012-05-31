sub do_cmd_cvlistitem{
    local($_) = @_;
    local($item);
    s/$next_pair_pr_rx/$item=$2;''/eo;
    '<div class="cvlist">'.$item."</div>" . $_;

}

sub do_cmd_cventry{
    local($_) = @_;
    local($return, $time,$title,$employer,$loc,$grade,$desc,$pat);
    $time = &missing_braces unless
        s/$next_pair_pr_rx/$time=$2;''/eo;
    $title = &missing_braces unless
        s/$next_pair_pr_rx/$title=$2;''/eo;
    $employer = &missing_braces unless
        s/$next_pair_pr_rx/$employer=$2;''/eo;

    $return = '<div class="cventry"><span class="time">'. $time.
    '</span><span class="title">'.$title.
    '&#44;&nbsp;</span><span class="employer">'.$employer;

    $loc = &missing_braces unless
        s/$next_pair_pr_rx/$loc=$2;''/eo;
    if($loc ne '') {
        $return.='&#44;&nbsp';
    }
    $return .= '</span><span class="location">'.$loc;


    $grade = &missing_braces unless
        s/$next_pair_pr_rx/$grade=$2;''/eo;
    if( $grade ne '') {
        $return.='&#44;&nbsp';
    }
    $return .= '</span><span class="grade">'.$grade;
    
    $desc = &missing_braces unless
        s/$next_pair_pr_rx/$desc=$2;''/eo;
    #if( $grade ne '') {
    #    $return.='&#44;&nbsp';
    #}
    $return .= '</span><span class="desc">'.$desc;

    $return.'</span></div>'. $_;
}

sub do_cmd_cvitem{
    local($_) = @_;
    local($title,$desc);
    $title = &missing_braces unless
        s/$next_pair_pr_rx/$title=$2;''/eo;
    $desc = &missing_braces unless
        s/$next_pair_pr_rx/$desc=$2;''/eo;

    '<div class="cvitem"></span><span class="title">'.$title.
    '</span><span class="desc">'.$desc.
    '</span></div>' . $_;
}

sub do_cmd_cvdoubleitem {
    local($_) = @_;
    local($return, $title1, $title2, $cont1, $cont2);
    $title1 = &missing_braces unless
        s/$next_pair_pr_rx/$title1=$2;''/eo;
    $cont1 = &missing_braces unless
        s/$next_pair_pr_rx/$cont1=$2;''/eo;
    $title2 = &missing_braces unless
        s/$next_pair_pr_rx/$title2=$2;''/eo;
    $cont2 = &missing_braces unless
        s/$next_pair_pr_rx/$cont2=$2;''/eo;

    '<div class="cvdoubleitem"><span class="title1">'. $title1.
    '</span><span class="cont1">'.$cont1.
    '</span><span class="title2">'. $title2.
    '</span><span class="cont2">'.$cont2.
    '</span></div>'. $_;
}

sub do_cmd_cvlistdoubleitem {
    local($_) = @_;
    local($return, $item1, $item2);
    $item1 = &missing_braces unless
        s/$next_pair_pr_rx/$item1=$2;''/eo;
    $item2 = &missing_braces unless
        s/$next_pair_pr_rx/$item2=$2;''/eo;

    '<div class="cvlistdoubleitem"><span class="item1">'. $item1.
    '</span><span class="item2">'.$item2.
    '</span></div>'. $_;
}

sub do_cmd_cvitemwithcomment{
    local($_) = @_;
    local($title,$desc,$comment);
    $title = &missing_braces unless
        s/$next_pair_pr_rx/$title=$2;''/eo;
    $desc = &missing_braces unless
        s/$next_pair_pr_rx/$desc=$2;''/eo;
    $comment = &missing_braces unless
        s/$next_pair_pr_rx/$comment=$2;''/eo;

    '<div class="cvitem"></span><span class="title">'.$title.
    '</span><span class="desc">'.$desc.
    '</span><span class="comment">'.$comment.
    '</span></div>' . $_;
}


sub do_cmd_firstname {
    local($_) = @_;
    s/$next_pair_pr_rx//o;
    ($t_firstname) = &translate_commands($&);
    $_;
}
sub do_cmd_familyname {
    local($_) = @_;
    s/$next_pair_pr_rx//o;
    ($t_familyname) = &translate_commands($&);
    $_;
}
sub do_cmd_address {
    local($_) = @_;
    s/$next_pair_pr_rx//o;
    ($t_address) = &translate_commands($&);
    s/$next_pair_pr_rx//o;
    ($t_address_1) = &translate_commands($&);
    $_;
}

sub do_cmd_email {
    local($_) = @_;
    &get_next_optional_argument;
    local($rest) = $_;
    $rest =~ s/$next_pair_pr_rx//o;
    ($t_email) = &make_href("mailto:$2","$2");
    $rest;
}

sub do_cmd_url {
    local($_) = @_;
    s/$next_pair_pr_rx//o;
    ($t_url) = &translate_commands($2);
    $_;
}

sub do_cmd_maketitle {
    local($_) = @_;
    &write_warnings("Hi $t_firstname.");

    '<div class="head">'.$t_firstname.'<div class="contact">'.$t_address.'</div></div>'. $_;

}
sub do_cmd_moderncvcolor {}
sub do_cmd_moderncvstyle {}
sub do_cmd_href {}
sub do_cmd_lhead {}
sub do_cmd_phone {}
sub do_cmd_mobile {}


1;
