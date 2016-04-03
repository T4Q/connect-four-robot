%function ev3_motor_test
global count 
global sensor1
myev3 = legoev3('usb');
aa = serial('COM4');

   

mymotor1 = motor(myev3,'C');
mymotor = motor(myev3,'B');

%while(count~=0)
    
fopen(aa);

sensor1= fscanf(aa ,'%d');

%disp(sensor1);

fclose(aa);
count = count - 1;
 
fclose(aa);
if(sensor1==1)
   


mymotor1.Speed = 50;
mymotor.Speed = 50;
start(mymotor)
start(mymotor1)
pause(1)
mymotor1.Speed = -50;
mymotor.Speed = -50;
start(mymotor)
start(mymotor1)
pause(1)
stop(mymotor)
stop(mymotor1)
%end
end


    
    