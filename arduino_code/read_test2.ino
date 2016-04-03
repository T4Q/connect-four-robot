
  int sensor1 = A1;
  int sensor2 = A2;
  int sensor3 = A3;
  int sensor4 = A4;
  int sensor5 = A5;
  int sensor6 = A6;
  int sensor7 = A7;
  int count1 = 7;
  int count2 = 17;
  int count3 = 27;
  int count4 = 37;
  int count5 = 47;
  int count6 = 57;
  int count7= 67;
  int red = 2;
  int green = 4;
  

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
    pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);

}

void loop() {
  // read value from sensor1
    digitalWrite(red , LOW);
  digitalWrite(green , HIGH);
  if(analogRead(sensor1)<=80){
    
   digitalWrite(green , LOW);
   digitalWrite(red , HIGH);
    
    count1 = count1-1;
  Serial.print(count1);
  Serial.print("\n");
  delay(1000);
  }

  // read value from sensor2
  if(analogRead(sensor2)<=80){
    
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);
    count2 = count2-1;
  Serial.print(count2);
  Serial.print("\n");
  delay(1000);
  }

  // read value from sensor3
  if(analogRead(sensor3)<=80){
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);

    count3 = count3-1;
  Serial.print(count3);
  Serial.print("\n");
  delay(1000);
  }  

  // read value from sensor4
  if(analogRead(sensor4)<=80){
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);
    
    count4 = count4-1;
  Serial.print(count4);
  Serial.print("\n");
  delay(1000);
  }
  
    // read value from sensor5
  if(analogRead(sensor5)<=80){
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);
    
    count5 = count5-1;
  Serial.print(count5);
  Serial.print("\n");
  delay(1000);
  }
  
    // read value from sensor6
  if(analogRead(sensor6)<=80){
    
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);
    
    count6 = count6-1;
  Serial.print(count6);
  Serial.print("\n");
  delay(1000);
  }
  
    // read value from sensor7
  if(analogRead(sensor7)<=80){
    
    digitalWrite(green , LOW);
    digitalWrite(red , HIGH);
    
    count7 = count7-1;
  Serial.print(count7);
  Serial.print("\n");
  delay(1000);
  }
}
