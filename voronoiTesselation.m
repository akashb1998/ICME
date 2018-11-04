%Voronoi Tessellation to generate a Digital Microstructure 

clear;

n = input('Enter the number of Nuclei: \n');
x = ceil(1024*rand(n,1));
y = ceil(1024*rand(n,1));
voronoi(x, y)