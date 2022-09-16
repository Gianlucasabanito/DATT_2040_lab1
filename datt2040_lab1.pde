float x, y;
float xStep = 20;
float yStep = 300;
float b, b_;
int num = 320;
color fillcolour;

void setup(){
size(800, 800);
}

void draw(){
  background(fillcolour);
  strokeWeight(3);
  int n = 0;
  while (n<num) {
    stroke (200, 200-200*sin(radians(b)));
    line(x, y, x, y+yStep);
    x+=xStep;
    if (x>width) {
      x=xStep/2;
      y+=yStep;
    }
    if (y>height) {
      y=0;
      b=0;
    }
    n++;
    b +=b_;
  }
  b_+=0.20;
}
void keyPressed()
{
  switch(key){
    case'1':// press 1 key to change colour
    fillcolour = color(200,0,0);
    break;

    case '2':// press 2 key to change colour
    fillcolour = color(0,200,0);
    break;

    case '3':// press 3 key to change colour
    fillcolour = color(0,0,200);
    break;

    default: //any other key
    fillcolour = color(0,0,0);

  }
}
