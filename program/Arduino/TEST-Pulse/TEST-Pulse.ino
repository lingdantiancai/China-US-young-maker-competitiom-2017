#include <Servo.h>

int pos = 0;
int temp;//设置一个值来存储从传感器中直接获取的值 
int out;//将temp进行限制处理后输出到舵机
int a,i,sum1=0,sum2=0,sum3=0,x;

int jz = 5;
int b,c,a1,b1,c1;

Servo myservo;
void setup() {
  Serial.begin(9600);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
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
    sum1 = sum1+analogRead(A0); //以Jz个数据为一组，求平均，进行平均降噪
  }
  
  a = sum1/jz; 

 for(i =0;i<jz;i++ )
  {
    sum2 = sum2+analogRead(A1); //以Jz个数据为一组，求平均，进行平均降噪
  }
  b = sum2/jz ;

   for(i =0;i<jz;i++ )
  {
    sum3 = sum3+analogRead(A2); //以Jz个数据为一组，求平均，进行平均降噪
  }
  c = sum3/jz ;

 a1 = a%200;
 out = map(a1,40,200,5,40);
 myservo.write(out);
 //***************************
 Serial.print(out);
 Serial.print(" ");
 Serial.print(a);
 Serial.print(" ");
 Serial.print(b);
 Serial.print(" ");
 Serial.println(c);
  sum1 = 0;
  sum2 = 0;
  sum3 = 0;
  // put your main code here, to run repeatedly:

}
