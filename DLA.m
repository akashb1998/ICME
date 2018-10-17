n = 101;
M = zeros(n, n);
M(51, 51) = 1;
k = 0;

while(k<200)
    theta = 2*pi*rand();
    i = floor(51 + 40*cos(theta));
    j = floor(51 + 40*sin(theta));
while(1)
if(M(i-1,j+1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i-1,j) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i-1,j-1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i,j+1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end

if(M(i,j-1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i+1,j+1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i+1,j) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end
if(M(i+1,j-1) == 1)
    M(i,j) = 1;
    k = k + 1; 
    break
end

random = ceil(8*rand());
neighbours = [i-1 j+1;i-1 j;i-1 j-1;i j+1;i j-1;i+1 j+1;i+1 j;i+1 j-1];
inew = neighbours(random,1);
jnew = neighbours(random,2);

x_dist = inew - 51;
y_dist = jnew - 51;

if((x_dist^2 + y_dist^2)>1600)
    break
end

i = inew;
j = jnew;
end
end
imshow(M)
title("Isotropic Attachment of Particles to Center")