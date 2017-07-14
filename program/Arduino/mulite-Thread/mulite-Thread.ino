#include "SCoop.h"
int a,i,sum= 0,track = 0,x,jz = 90,b[91];
defineTask(Task1);
 void Task1::setup()
 {
   pinMode(A0,INPUT);
 }
 void Task1::loop()
 {
 }
//快速定义

 defineTaskLoop(Task2)
 {
 
 }
  defineTaskLoop(Task3)
 {

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
 //Serial.print(analogRead(A0));
  Serial.print(a);
  Serial.print(" ");
 Serial.println(analogRead(A0));
  sum = 0;
 }
void setup() {
   mySCoop.start();
   Serial.begin(9600);
   pinMode(12, OUTPUT);
 }
void loop()
 {
   yield();
 }


