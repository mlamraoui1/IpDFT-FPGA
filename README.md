# IpDFT-FPGA
Dans ce projet, le but est de construire une bibliothèque de fonction MATLAB permettant l’estimation des composantes d’une sinusoïde perturbée par du bruit et de la distorsion harmonique 
L’objectif de ce projet est d’implanter sur FPGA plusieurs des algorithmes étudiés sur FPGA. Dans le cas de l’IpDFT, une DFT sur deux, trois ou quatre points en fréquence, sera calculée à l’aide de l’algorithme de Goertzel [goertzel]. La mise en oeuvre sur carte FPGA avec le principe du Hardware in The Loop permettra une étude rapide des performances statistiques de ces estimateurs.

Ce projet comporte les volets suivants :

 Etude bibliographique des algorithmes à partir des références : JAIN: https://ieeexplore.ieee.org/document/4314779/   et  Grandke : https://ieeexplore.ieee.org/document/4315077/

 Implantation sous MATLAB, puis SIMULINK des différents algorithmes et étude de leurs
performances vis-à-vis du rapport signal sur bruit et de la distorsion.

 Passage d’une description SIMULINK à une description matérielle pour cible XILINX, par
l’utilisation du bloc SYSGEN.

 Mise en oeuvre la co-simulation par le principe du Hardware in the Loop.

La carte de développement utilisée pour pour le test est une NEXYS4 development board qui embarque un FPGA Artix-7™.

