masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP4/PS4-Images
results=/workspaces/MorphoGraph/TP4/result_images

dilation $images/cell.pgm $masks/carre5.pgm $results/$1
erosion $results/$1 $masks/carre5.pgm $results/$1