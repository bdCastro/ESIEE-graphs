masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP5/PS5-Images
results=/workspaces/MorphoGraph/TP5/result_images
tmp=/workspaces/MorphoGraph/TP5/tmp

# creating tmp dir
mkdir -p $tmp

# removing local maximas
volmaxima $results/out3a.pgm 4 12000 $tmp/tmp1.pgm
maxima $tmp/tmp1.pgm 4 $tmp/tmp2.pgm

# selecting areas by volume
areaopening $tmp/tmp2.pgm 4 300 $tmp/tmp3.pgm

# removing major areas
sub $tmp/tmp2.pgm $tmp/tmp3.pgm $tmp/tmp4.pgm
cp $tmp/tmp4.pgm $tmp/almost-there.pgm

# extracting each letter
areaselnb $tmp/tmp4.pgm 4 1 $tmp/s.pgm
sub $tmp/tmp4.pgm $tmp/s.pgm $tmp/tmp4.pgm
areaselnb $tmp/tmp4.pgm 4 4 $tmp/tmp5.pgm
areaselnb $tmp/tmp4.pgm 4 5 $tmp/tmp6.pgm
sub $tmp/tmp6.pgm $tmp/tmp5.pgm $tmp/o.pgm
sub $tmp/tmp4.pgm $tmp/o.pgm $tmp/tmp4.pgm
areaselnb $tmp/tmp4.pgm 4 11 $tmp/tmp5.pgm
areaselnb $tmp/tmp4.pgm 4 12 $tmp/tmp6.pgm
sub $tmp/tmp6.pgm $tmp/tmp5.pgm $tmp/f.pgm
sub $tmp/tmp4.pgm $tmp/f.pgm $tmp/tmp4.pgm
areaselnb $tmp/tmp4.pgm 4 12 $tmp/tmp5.pgm
areaselnb $tmp/tmp4.pgm 4 15 $tmp/tmp6.pgm
sub $tmp/tmp6.pgm $tmp/tmp5.pgm $tmp/tel.pgm
sub $tmp/tmp4.pgm $tmp/tel.pgm $tmp/tmp4.pgm
areaselnb $tmp/tmp4.pgm 4 12 $tmp/tmp5.pgm
areaselnb $tmp/tmp4.pgm 4 13 $tmp/tmp6.pgm
sub $tmp/tmp6.pgm $tmp/tmp5.pgm $tmp/i.pgm
sub $tmp/tmp4.pgm $tmp/i.pgm $tmp/tmp4.pgm

# reconstructing the logo
sub $tmp/almost-there.pgm $tmp/tmp4.pgm $results/$1
# rm -dr $tmp