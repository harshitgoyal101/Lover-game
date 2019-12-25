PImage[] Vimg= new PImage[4];

void Vstart() {
  Vimg[0]= loadImage("VW.png");
  Vimg[1]= loadImage("VB.png");
  Vimg[2]= loadImage("VP.png");
  Vimg[3]= loadImage("VO.png");
}


class VPlatform {

  float x;
  float y;
  float len;
  float ch;

  VPlatform(float x_, float y_, float len_, float ch_) {
    x=x_;
    y=y_;
    ch=ch_;
    len=len_;
    Vstart();
  }
  
  void show() {
    for (int i=0; i<img.length; i++) {
      if (this.ch==i)
        image(Vimg[i], this.x-22, this.y, 65, this.len);
    }
  }
}
