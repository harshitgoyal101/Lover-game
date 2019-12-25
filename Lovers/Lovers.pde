LevelOne l1=new LevelOne();
int count=0;
PImage bg;

void setup() {
  size(1600, 800);
  l1.start();
  bg = loadImage("BG.png");
}

void draw() {
  image(bg,0,0,1600,800);
  l1.run(count);
}


void keyPressed() {
  if (key==' ') {
    if (count==1)
      count=0;
    else
      count++;
  }
}
