int startX = (int)(Math.random()*300);
int startY = 0;
int endX = 150;
int endY = 150;
float strokeW = 10;
void setup()
{
  size(300,300);
  background(143, 142, 133);
}
void draw()
{
  stroke(255, 229, 36);
  while(endY <= 300){
    strokeWeight(strokeW);
    endX = startX + (int)(Math.random()*20) - 10;
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if(strokeW > 1){
      strokeW = strokeW - 0.5;
    }
  }
}
void mousePressed()
{
  startX = 0;
  startY = 0;
  strokeW = 10;
}