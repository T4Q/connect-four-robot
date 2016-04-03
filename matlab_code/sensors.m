function sensors % arduino comuncation
global sensorX  sensorY aa ; 

  sensorX = 0;
  sensorY = 0 ;

%initilaize serial port for comuncation with arduino
%aa = serial('COM3'); 

% open serial port 
%fopen(aa); 

% read from serial port
sensor= fscanf(aa ,'%d'); 

%check witch sensor is reading the data 

    if sensor>0 && sensor<8
        
            sensorY = sensor;
            sensorX =1;
            return;
            
    end
       
    if sensor>10 && sensor<18
        
            sensorY = sensor - 10;
            sensorX =2;
            return;
    end
            
    if sensor>20 && sensor<28
        
            sensorY = sensor - 20;
            sensorX =3;
            return;

    end       
            
    if sensor>20 && sensor<28
        
            sensorY = sensor - 20;
            sensorX =3;
            return;
    end       
            
            
    if sensor>30 && sensor<38
        
            sensorY = sensor - 30;
            sensorX =4;
            return;
    end       
            
            
    if sensor>40 && sensor<48
        
            sensorY = sensor - 40;
            sensorX =5;
            return;
    end      
            
    if sensor>50 && sensor<58
        
            sensorY = sensor - 50;
            sensorX =6;
            return;
    end       
            
    if sensor>60 && sensor<68
        
            sensorY = sensor - 60;
            sensorX =7;
            return;
        
    end
            
            



% close serial port
%fclose(aa);
