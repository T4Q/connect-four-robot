clear all
clc
count = 0;
aa = serial('COM3');
while(count~=5)
    
fopen(aa);

x= fscanf(aa ,'%d');

disp(x);

fclose(aa);
count = count + 1;
end
fclose(aa);

