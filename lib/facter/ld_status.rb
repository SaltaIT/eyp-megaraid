# LDISK: for ( my $ld = 0; $ld < $ldnum; $ld++ ) {
#         # Get info on this particular logical drive
#         open (LDINFO, "$megacli -LdInfo -L$ld -a$adp $megapostopt |")
#                 || exitreport('UNKNOWN', "error: Could not execute $megacli -LdInfo -L$ld -a$adp $megapostopt ");
#
#         my ($size, $unit, $raidlevel, $ldpdcount, $state, $spandepth);
#         while (<LDINFO>) {
#                 if ( m/Size\s*:\s*((\d+\.?\d*)\s*(MB|GB|TB))/ ) {
#                         $size = $2;
#                         $unit = $3;
#                         # Adjust MB to GB if that's what we got
#                         if ( $unit eq 'MB' ) {
#                                 $size = sprintf( "%.0f", ($size / 1024) );
#                                 $unit= 'GB';
#                         }
#                 } elsif ( m/State\s*:\s*(\w+)/ ) {
#                         $state = $1;
#                         if ( $state ne 'Optimal' ) {
#                                 $status = 'CRITICAL';
#                         }
#                 } elsif ( m/Number Of Drives\s*(per span\s*)?:\s*(\d+)/ ) {
#                         $ldpdcount = $2;
#                 } elsif ( m/Span Depth\s*:\s*(\d+)/ ) {
#                         $spandepth = $1;
#                 } elsif ( m/RAID Level\s*: Primary-(\d)/ ) {
#                         $raidlevel = $1;
#                 }
#         }
#         close LDINFO;
