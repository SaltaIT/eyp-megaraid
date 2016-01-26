# # Get info on physical disks for this adapter
# open (PDLIST, "$megacli -PdList  -a$adp $megapostopt |")
#         || exitreport('UNKNOWN', "error: Could not execute $megacli -PdList -a$adp $megapostopt ");
#
# my ($slotnumber,$fwstate);
# PDISKS: while (<PDLIST>) {
#         if ( m/Slot Number\s*:\s*(\d+)/ ) {
#                 $slotnumber = $1;
#                 $pdcount++;
#         } elsif ( m/(\w+) Error Count\s*:\s*(\d+)/ ) {
#                 if ( $1 eq 'Media') {
#                         $mediaerrors += $2;
#                 } else {
#                         $othererrors += $2;
#                 }
#         } elsif ( m/Predictive Failure Count\s*:\s*(\d+)/ ) {
#                 $prederrors += $1;
#         } elsif ( m/Firmware state\s*:\s*(\w+)/ ) {
#                 $fwstate = $1;
#                 if ( $fwstate eq 'Hotspare' ) {
#                         $hotsparecount++;
#                 } elsif ( $fwstate eq 'Online' ) {
#                         # Do nothing
#                 } elsif ( $fwstate eq 'Unconfigured' ) {
#                         # A drive not in anything, or a non drive device
#                         $pdcount--;
#                 } elsif ( $slotnumber != 255 ) {
#                         $pdbad++;
#                         $status = 'CRITICAL';
#                 }
#         }
# } #PDISKS
# close PDLIST;
