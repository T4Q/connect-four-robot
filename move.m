%function move(j) 

%create object from legoev3 
robot = legoev3('usb');

mymotorL = motor(robot,'C');
mymotorR = motor(robot,'B');
kick = motor(robot,'A');


switch j
    case j==1 % coulme 1
        %move to postion
        while readRotation(mymotorL)~= 200 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
    case j==2 % coulme 2
        %move to postion
        while readRotation(mymotorL)~= 400 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
            case j==3 % coulme 3
        %move to postion
        while readRotation(mymotorL)~= 600 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
            case j==4 % coulme 4
        %move to postion
        while readRotation(mymotorL)~= 800 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
            case j==5 % coulme 5
        %move to postion
        while readRotation(mymotorL)~= 1000 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
            case j==6 % coulme 6
        %move to postion
        while readRotation(mymotorL)~= 1200 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
        
        
        
            case j==7 % coulme 7
        %move to postion
        while readRotation(mymotorL)~= 1400 
        mymotorL.Speed = 50;
        mymotorR.Speed = 50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        pause(1)
                        %kick the coin
                       while readRotation(kick)~= 50 
                       kick.Speed = 50;
                       start(kick)
                       end
                         stop(kick)
                          pause(1)
            
                      while readRotation(kick)~= 0 
                      kick.Speed = -50;
                      start(kick)
                      end
                          stop(kick)
                    %end of kick the coin
                            
        % back to start postion
        while readRotation(mymotorL)~= 0 
        mymotorL.Speed = -50;
        mymotorR.Speed = -50;
        start(mymotorL)
        start(mymotorR)
        end
        stop(mymotorL)
        stop(mymotorR)
        %end of one move and back to origin 
end    