int startX = (int)(Math.random()*300);
int startY = 0;
int endX = 150;
int endY = 150;
float strokeW = 10;
int cloudColor = 50;
int colorMult = 1;
void setup()
{
  size(300,300);
  background(143, 142, 133);
}
void draw()
{
  stroke(255, 229, 36);
  if(mousePressed && endY > 300){
    startX = (int)(Math.random()*300);
    startY = 0;
    endX = 0;
    endY = 0;
    strokeW = 10;
    colorMult = 170;
  }
 
   strokeWeight(strokeW);
   endX = startX + (int)(Math.random()*20) - 10;
   endY = startY + (int)(Math.random()*20);
   line(startX, startY, endX, endY);
   startX = endX;
   startY = endY;
   if(strokeW > 1){
     strokeW = strokeW - 0.5;
   }
   fill(143, 142, 133, 20);
   stroke(143, 142, 133, 20);
   rect(0,0, 300, 300);
   
   cloudColor = 50 + (int)(Math.random()*25) + colorMult;
   fill(cloudColor);
   stroke(cloudColor);
   strokeWeight(10);
   ellipse(150, 1, 300, 50 );
   
   cloudColor = 50 + (int)(Math.random()*25) + colorMult;
   fill(cloudColor);
   stroke(cloudColor);
   strokeWeight(10);
   ellipse(250,1,150,100);
   
   cloudColor = 50 + (int)(Math.random()*25) + colorMult;
   fill(cloudColor);
   stroke(cloudColor);
   strokeWeight(10);
   ellipse(25,20,60, 30);
   
   cloudColor = 50 + (int)(Math.random()*25) + colorMult;
   fill(cloudColor);
   stroke(cloudColor);
   strokeWeight(10);
   ellipse(170,20,60, 30);
   
   cloudColor = 50 + (int)(Math.random()*25) + colorMult;
   fill(cloudColor);
   stroke(cloudColor);
   strokeWeight(10);
   ellipse(300,40,60, 30);

   colorMult = 1;
}
