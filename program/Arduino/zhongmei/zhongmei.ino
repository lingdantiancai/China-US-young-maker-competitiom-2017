int a,i,sum=0;
int b[5];
int temp;
int jz = 7;

void setup() {
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(A0,INPUT);
}

void loop()
{
//Serial.println(analogRead(A0));
  for(i=0;i<jz;i++)
  {
    b[i]  = analogRead(A0);
  }
  for(i =0;i<jz;i++ )
  {
    sum = sum+b[i];
  }
  a = sum/5; 
  Serial.println(a);
  sum = 0;
}
