masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP4/PS4-Images
results=/workspaces/MorphoGraph/TP4/result_images
tmp=/workspaces/MorphoGraph/TP4/tmp

# mkdir $tmp

dilation $images/sofitel2.pgm $masks/carre5.pgm $tmp/dilation.pgm
sub $tmp/dilation.pgm $images/sofitel2.pgm $tmp/dilation_sub.pgm

erosion $images/sofitel2.pgm $masks/carre5.pgm $tmp/erosion.pgm
sub $images/sofitel2.pgm $tmp/erosion.pgm $tmp/erosion_sub.pgm

min $tmp/erosion_sub.pgm $tmp/dilation_sub.pgm $results/$1

# rm -r $tmp