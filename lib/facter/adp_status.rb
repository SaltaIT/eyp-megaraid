# Get the number of RAID controllers we have
# open (ADPCOUNT, "$megacli -adpCount $megapostopt |")  
#         || exitreport('UNKNOWN',"error: Could not execute $megacli -adpCount $megapostopt");
#
# while (<ADPCOUNT>) {
#         if ( m/Controller Count:\s*(\d+)/ ) {
#                 $adapters = $1;
#                 last;
#         }
# }
# close ADPCOUNT;
