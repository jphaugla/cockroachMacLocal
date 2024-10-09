got a thales trial but could find anywhere to download the software
trial license involved getting a 2 factor authentication
then ended up needing to create a service in my account for Luna Cloud HSM
watching this video, https://www.youtube.com/watch?v=R25z38iP3m4

in the administrator there is a "?".  This has context specific as well as links to full documentation.

Here is a quickstart guide https://thalesdocs.com/dpod/services/luna_cloud_hsm/service/quick_start/index.html

DpoD means Data Protection on Demand

dang it, luna cloud hsm client isn't supported on mac
https://thalesdocs.com/dpod/services/luna_cloud_hsm/service/quick_start/index.html
https://thalesdocs.com/gphsm/luna/7/docs/network/Content/Utilities/cmu/cmu.htm
saved off some thales scripts I used for testing the cmu.  NOTE:  this luna cloud hsm client does not work 
with the types of keys used for CRDB data encryption.  THe thales keys in luna cloud hsm are asymmetric whereas data encryption keys are symmetric https://www.nist.gov/publications/advanced-encryption-standard-aes

Looking at Ciphertrust manager as it seems more of a general purpose key management solution
https://cpl.thalesgroup.com/sites/default/files/content/product_briefs/ciphertrust-manager-pb.pdf

This blog actually helped a prospect as they met their requirements using ecnrypt specific tables
https://www.cockroachlabs.com/blog/selective-encryption-tutorial-cockroachdb/
