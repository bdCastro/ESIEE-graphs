masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP5/PS5-Images
results=/workspaces/MorphoGraph/TP5/result_images
tmp=/workspaces/MorphoGraph/TP5/tmp

mkdir -p $tmp
seuil $images/cil.pgm 128 $tmp/tmp1.pgm
areaclosing $images/cil.pgm $tmp/tmp1.pgm $results/$1
rm -dr $tmp