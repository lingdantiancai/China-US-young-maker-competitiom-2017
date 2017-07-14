#include <Servo.h>

int pos = 0;
int temp;//设置一个值来存储从传感器中直接获取的值 
int out;//将temp进行限制处理后输出到舵机
int a,i,sum=0,track = 0,x;

int jz = 5;
int b[5];

Servo myservo;
void setup() {
  Serial.begin(9600);
  pinMode(A0,INPUT);
  myservo.attach(9);
  pinMode(6,OUTPUT);
  // put your setup code here, to run once:

}

void loop() {

// temp = analogRead(A0);
// Serial.println(temp);
//****************************在这块代码里面，进行了一个简单的平均平滑降噪并将波形输出到舵机
 
  for(i =0;i<jz;i++ )
  {
    sum = sum+analogRead(A0); //以Jz个数据为一组，求平均，进行平均降噪
  }
  
  a = sum/jz; 


  
 out = map(a,40,200,5,40);
 myservo.write(out);
 //***************************
 
 Serial.println(analogRead(A0));
 Serial.print(" ");
 Serial.println(a);
  sum = 0;
  track= 0;
  // put your main code here, to run repeatedly:

}
