masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP5/PS5-Images
results=/workspaces/MorphoGraph/TP5/result_images
tmp=/workspaces/MorphoGraph/TP5/tmp

mkdir -p $tmp
volselnb $images/cil.pgm 4 10 $tmp/tmp1.pgm
maxima $tmp/tmp1.pgm 4 $results/$1
rm -dr $tmp