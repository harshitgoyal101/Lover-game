PImage[] img= new PImage[6];

void start() {
  img[0]= loadImage("HW.png");
  img[1]= loadImage("HB.png");
  img[2]= loadImage("P2.png");
  img[3]= loadImage("HO.png");
  img[4]= loadImage("HO.png");
  img[5]= loadImage("tt.png");
}

class Platform {
  float x;
  float y;
  float len;
  float ch=0;

  Platform(float x, float y, float len, float ch) {
    this.x=x;
    this.y=y;
    this.len=len;
    this.ch=ch;
    start();
  }

  void show() {
    float o=int((this.len)/150);
    for (int i=0; i<img.length; i++) {
      if (this.ch==i){
        for(int j=0;j<o;j++){
          image(img[i], this.x+(j*150), this.y-15, 150, 70);
        }
        if(ch==4){
          image(img[5], this.x, this.y-70, 150, 70);
        }
      }
    }
  }
}
