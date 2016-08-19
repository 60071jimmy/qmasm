###################################
# 4-bit sorting network           #
# By Scott Pakin <pakin@lanl.gov> #
###################################

!include <comparator>

!use_macro comparator c1
c1.$a = i2
c1.$b = i3
$s1_2 = c1.$min
$s1_3 = c1.$max

!use_macro comparator c2
c2.$a = i1
c2.$b = $s1_2
$s2_1 = c2.$min
$s2_2 = c2.$max

!use_macro comparator c3
c3.$a = $s1_3
c3.$b = i4
$s3_3 = c3.$min
$s3_4 = c3.$max

!use_macro comparator c4
c4.$a = $s2_2
c4.$b = $s3_3
$s4_2 = c4.$min
$s4_3 = c4.$max

!use_macro comparator c5
c5.$a = $s2_1
c5.$b = $s4_2
o1 = c5.$min
o2 = c5.$max

!use_macro comparator c6
c6.$a = $s4_3
c6.$b = $s3_4
o3 = c6.$min
o4 = c6.$max
