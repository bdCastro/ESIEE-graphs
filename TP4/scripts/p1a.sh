masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP4/PS4-Images
results=/workspaces/MorphoGraph/TP4/result_images

erosion $images/cell.pgm $masks/carre5.pgm $results/$1
dilation $results/$1 $masks/carre5.pgm $results/$1