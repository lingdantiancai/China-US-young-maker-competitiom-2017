#include <Servo.h>
int a,i,sum= 0,track = 0,x,jz = 90,b[91];
Servo myservo;
void setup() {
  Serial.begin(9600);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  myservo.attach(9);
  // put your setup code here, to run once:

}

void loop() {

  b[0] = analogRead(A0);
   for(i =jz;i>0;i-- )
  {
    b[i] = b[i-1];
  }
  for(i=0;i<jz;i++)
  {
    sum = sum+b[i];
    }
  a = sum/jz; 
   x = map(analogRead(A0),a-30,a+60,5,40);
   myservo.write(x);
   Serial.print(a);
   //Serial.print(analogRead(A1));
   Serial.print(" ");
   Serial.print(x);
   Serial.print(" ");
   Serial.println(analogRead(A0));
 // Serial.print(" ");
 // Serial.println(analogRead(A2));
    sum = 0;

}
