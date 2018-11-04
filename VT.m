%Generation of 2D Digital Microstructure - 26/10/2018
%Written by Akash Mahendra Bhavsar MM16B012

clear;

size = input('Enter the size of the computational grid: \n');
n = input('Enter the number of grains: \n');
vx = input('Enter x component of growth velocity: \n');
vy = input('Enter y component of growth velocity: \n');
tmax = input('Enter the number of time steps: \n');
f = input('Enter the frequency of output: \n');
grid = zeros(size, size);
nx = ceil(size*rand(n,1));
ny = ceil(size*rand(n,1));
id = 1:n;

for i = 1:n
    grid(nx(i),ny(i)) = id(i);
end

for t = 0:0.5:tmax
    for i = 1:n
        for j = 0:0.001:2*pi()
            if(vx > vy)          
                x = ceil(nx(i) + t*cos(j));
                y = ceil(ny(i) + t*(vy/vx)*sin(j));
            else
                x = ceil(nx(i) + t*(vx/vy)*cos(j));
                y = ceil(ny(i) + t*sin(j));  
            end
            if(x<1)
                x = x + size;
            end
            if(y<1)
                y = y + size;
            end
            if(x>size)
                x = x - size;
            end
            if(y>size)
                y = y - size;
            end
            if(grid(x,y)==0)
                grid(x,y) = id(i);
            end
        end
    end
    if(rem(t,f)==0)
        imagesc(grid);
        %pcolor(grid);
        colorbar;
        figure;
    end
end
