masks=/workspaces/MorphoGraph/PINK/Pinktmp/masks
images=/workspaces/MorphoGraph/TP4/PS4-Images
results=/workspaces/MorphoGraph/TP4/result_images

opening $results/$1 $masks/ball3.pgm $results/$1
closing $images/sofitel.pgm $masks/ball3.pgm $results/$1