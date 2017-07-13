#include <Servo.h>
int a ;
int pos = 0;
int temp;//设置一个值来存储从传感器中直接获取的值 
int out;//将temp进行限制处理后输出到舵机
Servo myservo;
void setup() {
  Serial.begin(9600);
  pinMode(A0,INPUT);
  myservo.attach(9);
  // put your setup code here, to run once:

}

void loop() {

 temp = analogRead(A0);
 Serial.println(temp);

 out = map(temp,150,270,5,50);
 myservo.write(out);
 
  // put your main code here, to run repeatedly:

}
