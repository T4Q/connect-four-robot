function move_test1(j)
  
robot = legoev3('usb');

mymotorL = motor(robot,'C');
mymotorR = motor(robot,'B');  
kick = motor(robot,'A');  
mycolorsensor = colorSensor(robot);
resetRotation(mymotorL)
count = j;

while (count ~= 0)

        while ~strcmp(readColor(mycolorsensor),'black')

        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)



        

        end

                stop(mymotorL,1)
        stop(mymotorR,1)

        while ~strcmp(readColor(mycolorsensor),'brown')
            if count == 0
                break;
            end
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)

            

        

        end

                stop(mymotorL,1)
        stop(mymotorR,1)

        count = count-1;
        

end


 resetRotation(kick)
 pause(1);
while ~(readRotation(kick)<=-100)
            kick.Speed = -75;


        start(kick)
end
        stop(kick)
         resetRotation(kick)
       while ~(readRotation(kick)>=100)
            kick.Speed = 75;

        start(kick)

        end
        stop(kick)
        resetRotation(kick)
pause(5);

while true
        if ~strcmp(readColor(mycolorsensor),'white')
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        else
        stop(mymotorL,1)
        stop(mymotorR,1)
            break;
        end
end

