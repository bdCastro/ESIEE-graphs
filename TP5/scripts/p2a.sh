masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP5/PS5-Images
results=/workspaces/MorphoGraph/TP5/result_images
tmp=/workspaces/MorphoGraph/TP5/tmp

mkdir -p $tmp
seuil $images/cil.pgm 110 $results/$1
rm -dr $tmp