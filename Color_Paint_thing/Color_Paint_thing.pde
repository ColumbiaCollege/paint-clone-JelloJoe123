color cursorcolor = 0;
float green = 0;
float red = 0;
float blue = 0;
int step = 10;
int szstep = 5;
float xsize = 8;
float ysize = 8;

void setup() {
  size(600, 400);
  background(255);

}



void draw() {
   
  noStroke();
  //more green button
  fill(0,green,0);
  rect(0,0,50,50);
  if (mousePressed && mouseX<50 && mouseY<50){        //&& = and also   || = or         != reverses true/false   == --> makes it a test
  
    green = green + step;
  } 
  //less green button
  fill(0,green,0);
  rect(50,0,50,50);
  if (mousePressed && 50<mouseX && mouseX<100 && mouseY<50){
     green = green -step;
  }
  
  //more red button
  fill(red,0,0);
  rect(0,50,50,50);
  if (mousePressed && mouseX<50 && mouseY<100 && mouseY>50){
    red = red + step;
  }
  //less red button
  fill(red,0,0);
  rect(50,50,50,50);
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY>50 && mouseY<100){
  red = red - step;
  }
  
  //more blue button
  fill(0,0,blue);
  rect(0,100,50,50);
  if (mousePressed && mouseX<50 && mouseY>100 && mouseY<150){
    blue = blue + step;
  }
  //less blue button
  fill(0,0,blue);
  rect(50,100,50,50);
  if (mousePressed && mouseX>50 && mouseX<100 && mouseY>100 && mouseY<150){
    blue = blue - step;
  }
  //makes the cursor the color of pressed changes
  cursorcolor = color(red,green,blue);
  
  // plus size button
  fill(0);
  rect(10,160,25,25);
  if (mousePressed && mouseX>10 && mouseX<35 && mouseY>160 && mouseY<185){
    xsize = xsize - szstep;
    ysize = ysize - szstep;  
  }
  // minus size button
  fill(0);
  rect(60,160,25,25);
  if (mousePressed && mouseX>60 && mouseX<85 && mouseY>160 && mouseY<185){
    xsize = xsize +szstep;
    ysize = ysize + szstep;
  }
  
  
  
  
  
  
  
  
  //green plus
  fill(0,100,0);
  rect(19,25,12,2);
  rect(24,20,2,12);
  //green minus
  rect(69,25,12,2);
  
  //red plus
  fill(100,0,0);
  rect(19,75,12,2);
  rect(24,70,2,12);
  //RED MINUS
  rect(69,75,12,2);
  
  //blue plus
  fill (0,0,120);
  rect(19,125,12,2);
  rect(24,120,2,12);
  //blue minus
  rect(69,125,12,2);
  
  //size button
  fill (0);
  rect(19,175,12,2);
  rect(24,170,2,12);
  
  rect(69,175,12,2);
  
  //drawing part
  if (mousePressed && mouseX>100) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, xsize, ysize);
  }
  //green plus

}
