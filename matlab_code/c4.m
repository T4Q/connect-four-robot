close all
clear
clc
%% Initialize
global pp pm winn sensorX sensorY 

  global aa 

% possible play
pp=[6 6 6 6 6 6 6;1 2 3 4 5 6 7];

% playing matrix
pm=zeros(6,7);

% Displaying matrix
dm=[[[1;2;3;4;5;6] pm];[0 1 2 3 4 5 6 7]];

% win table
r1=[6 6 6 6 6 6 6;1 2 3 4 5 6 7;0 0 0 0 0 0 0];
r2=[5 5 5 5 5 5 5;1 2 3 4 5 6 7;0 0 0 0 0 0 0];
r3=[4 4 4 4 4 4 4;1 2 3 4 5 6 7;0 0 0 0 0 0 0];
r4=[3 3 3 3 3 3 3;1 2 3 4 5 6 7;0 0 0 0 0 0 0];
r5=[2 2 2 2 2 2 2;1 2 3 4 5 6 7;0 0 0 0 0 0 0];
r6=[1 1 1 1 1 1 1;1 2 3 4 5 6 7;0 0 0 0 0 0 0];

r7=[6 5 4 3 2 1;1 1 1 1 1 1;0 0 0 0 0 0];
r8=[6 5 4 3 2 1;2 2 2 2 2 2;0 0 0 0 0 0];
r9=[6 5 4 3 2 1;3 3 3 3 3 3;0 0 0 0 0 0];
r10=[6 5 4 3 2 1;4 4 4 4 4 4;0 0 0 0 0 0];
r11=[6 5 4 3 2 1;5 5 5 5 5 5;0 0 0 0 0 0];
r12=[6 5 4 3 2 1;6 6 6 6 6 6;0 0 0 0 0 0];
r13=[6 5 4 3 2 1;7 7 7 7 7 7;0 0 0 0 0 0];

r14=[6 5 4 3;4 3 2 1;0 0 0 0];
r15=[6 5 4 3 2;5 4 3 2 1;0 0 0 0 0];
r16=[6 5 4 3 2 1;6 5 4 3 2 1;0 0 0 0 0 0];
r17=[6 5 4 3 2 1;7 6 5 4 3 2;0 0 0 0 0 0];
r18=[5 4 3 2 1;7 6 5 4 3;0 0 0 0 0];
r19=[4 3 2 1;7 6 5 4;0 0 0 0];

r20=[6 5 4 3;4 5 6 7;0 0 0 0];
r21=[6 5 4 3 2;3 4 5 6 7;0 0 0 0 0];
r22=[6 5 4 3 2 1;2 3 4 5 6 7;0 0 0 0 0 0];
r23=[6 5 4 3 2 1;1 2 3 4 5 6;0 0 0 0 0 0];
r24=[5 4 3 2 1;1 2 3 4 5;0 0 0 0 0];
r25=[4 3 2 1;1 2 3 4;0 0 0 0];

sp=[0;0;3]; %Separator

win1=[r1 sp r2 sp r3 sp r4 sp r5 sp r6];
win2=[r7 sp r8 sp r9 sp r10 sp r11 sp r12 sp r13];
win3=[r14 sp r15 sp r16 sp r17 sp r18 sp r19];
win4=[r20 sp r21 sp r22 sp r23 sp r24 sp r25];
winn=[sp win1 sp win2 sp win3 sp win4 sp];


%% Start play
aa = serial('COM3'); 
%robot = legoev3('usb');
%Set TimeOut for Serial Port
set(aa,'Timeout',3000);
fopen(aa); 
a=input('want to start? [y=1, n=0] ');
ch=[]; % check if the play is admissible
if a==1
    while true
        disp(dm)
        sensors()
        j=sensorX;
        i=sensorY;
        
       % j=input('your play? [x] ');
      %  i=input('your play? [y] ');
        ch=chec(i,j);
        if ch==0
            disp('Your play is not admissible')
            disp('Please choose another play')
        else
            break;
        end
    end
    updat(i,j,1);
    dm=[[[1;2;3;4;5;6] pm];[0 1 2 3 4 5 6 7]];
    a=2; % computer play
else
    % my play
    i=6;
    j=4;
   move_test1(j)
   
    updat(i,j,2);
    dm=[[[1;2;3;4;5;6] pm];[0 1 2 3 4 5 6 7]];
    a=1; % enemy play
end
disp(dm)

w=0; % win flag
while w==0 && i>0 && j>0
    w=win();
        if w==1
            disp(dm)
            disp('You won')
            break;
        elseif w==2
            disp(dm)
            disp('You lost')
            break;
        else
            if a==1 % enemy play
                while true
             
                    sensors()
            j=sensorX;
            i=sensorY;          
                    ch=chec(i,j);
                    if ch==0
                        disp('Your play is not admissible')
                        disp('Please choose another play')
                    else
                        break;
                    end
                end
                updat(i,j,1);
                dm=[[[1;2;3;4;5;6] pm];[0 1 2 3 4 5 6 7]];
                a=2; % computer play
            else % computer play
                    [i,j]=next_play();
                   move_test1(j)
                   
                    updat(i,j,2);
                    dm=[[[1;2;3;4;5;6] pm];[0 1 2 3 4 5 6 7]];
                    a=1; % enemy play
                    disp(dm)
                    
                    
                    
            end
        end
end
fclose(aa);

