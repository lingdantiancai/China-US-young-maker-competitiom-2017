import processing.serial.*;
PrintWriter output;
Serial myPort;        // The serial port
int xPos = 1;         // horizontal position of the graph
float fValue1;
float fValue2;
float fValue3;
boolean newVal = false;
int plotX=500; //
int plotY=500;//
int fileOpenFlag=0;
String[] lines;
int index = 0;
void setup () {
  size(800, 630);//设置界面大小
  background(255);//设置背景颜色，白色

  rect(550, 100, 60, 30);//start button
  rect(550, 150, 60, 30);//save button
 // rect(650, 100, 60, 30);//保存文件
  myPort = new Serial(this, "COM3", 9600);//设置串口端口
  myPort.bufferUntil('\n');
  //stroke(127, 34, 255);//设置颜色

  fill(255);
  rect(0, 100, plotX, plotY);//画图形显示框
  PFont font = createFont("SimHei", 64);
  textFont(font);
  lines = loadStrings("input.txt");//导入参数文件
  println(lines[3]);


  // textSize(20);
  textSize(80);
  fill(126, 0, 134);
  text("悬丝诊脉", 200, 80);
  fill(0);
  textSize(20);
  text("保存", 555, 175); 
  text("开始", 555, 125); 
  text("名字：", 510, 225); 
  text("年龄：", 510, 250); 
  text("性别：", 510, 275); 
  text("方案：", 510, 300); 
  text(lines[0], 565, 225);
  text(lines[1], 565, 250);
  text(lines[2], 565, 275);
  text(lines[3], 565, 300);

  drawStuff();//画坐标轴
}
int xPos_pre = 0;
int yPos_pre = 0;
int yPos_pre1 = 0; 
int yPos_pre2 = 0; 
void draw () {
  if (newVal) {
    //line(xPos, height, xPos, height - fValue);
    //stroke(0,0,205);
    //point(xPos, fValue1);//+100);
    //stroke(255,0,0);
    //point(xPos, fValue2+100);
    //stroke(0,255,0);
    //point(xPos, fValue3+200);
    if (xPos!=0)
    {
      stroke(0,0,255);
      line(xPos_pre, yPos_pre+100, xPos, fValue1+100);
      stroke(255,0,0);
      line(xPos_pre, yPos_pre1+200, xPos, fValue2+200);
      stroke(0,255,0);
      line(xPos_pre, yPos_pre2+300, xPos, fValue3+300);
    }
      
    xPos_pre = xPos;
    yPos_pre = (int)fValue1;
    yPos_pre1 = (int)fValue2;
    yPos_pre2 = (int)fValue3;
    xPos++;
    if (xPos >= plotX) {
      xPos = 0;
      fill(255);
      rect(0, 100, plotX, plotY);
      drawStuff();
      // background(2);
      //stroke(127, 34, 255);
    }
    newVal = false;
  }
}

void serialEvent (Serial myPort) {
  if (fileOpenFlag==1)
  {
    String inString = myPort.readStringUntil('\n');
    if (inString != null) {
      inString = trim(inString);
      if (inString.charAt(0)=='A')
      {
        inString = inString.substring(1);
        fValue1 = int(inString);
        println(fValue1);
        //output.println(fValue1); // Write the coordinate to the file
       // output.print(' ');
        //output.println("你好");
       // fValue1 = map(fValue1, 0, 1000, 0, 500);
        //fValue = random(0,500);  
      }
      if (inString.charAt(0)=='B')
      {
        inString = inString.substring(1);
        fValue2 = int(inString);
        print(fValue2);
        //output.print(fValue2); // Write the coordinate to the file
        //output.print(' ');
        //output.println("你好");
        //fValue2 = map(fValue2, 0, 1000, 0, 500);
        //fValue = random(0,500);  
      }
      if (inString.charAt(0)=='C')
      {
        inString = inString.substring(1);
        fValue3 = int(inString);
        print(fValue3);
        //output.println(fValue3); // Write the coordinate to the file
        //output.println("你好");
        //fValue3 = map(fValue3, 0, 1000, 0, 500);
        //fValue = random(0,500);  
      }
      newVal = true;
    }
  }
}

void keyPressed() {
}

void mousePressed() {
  if (startOver())
  {
    fileOpenFlag =1;
    println("start");
    output = createWriter("positions.txt");
  }
  if (saveOver())
  {
    println("save");
    fill(125);
    text("文件已保存。", 550, 200);
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
    //exit(); // Stops the program
  }
}
boolean startOver() {
  if (mouseX >= 550 && mouseX <= 550+60 && 
    mouseY >= 100 && mouseY <= 100+30) {
    return true;
  } else {
    return false;
  }
}
boolean saveOver() {
  if (mouseX >= 550 && mouseX <= 550+60 && 
    mouseY >= 150 && mouseY <= 150+30) {
    return true;
  } else {
    return false;
  }
}
void drawStuff() {
  //background(0);d
  for (int i = 0; i <= plotX; i += 50) {

    text(i/2, i-10, plotY+120);
    fill(0, 0, 0);
    stroke(0);
    line(i, 600, i, 100);
  }
  /*
  for (int j = 0; j < plotY; j += 33) {
   fill(0, 0, 0);
   text(6-j/(plotY/6), 0, j);
   stroke(255);
   line(0, j, plotX, j);
   }
   */
}