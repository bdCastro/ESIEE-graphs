masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP5/PS5-Images
results=/workspaces/MorphoGraph/TP5/result_images
tmp=/workspaces/MorphoGraph/TP5/tmp

mkdir -p $tmp
opening $images/s.pgm $masks/2d_north.pgm $tmp/tmp1.pgm
closing $tmp/tmp1.pgm $masks/2d_north.pgm $results/$1
rm -dr $tmp