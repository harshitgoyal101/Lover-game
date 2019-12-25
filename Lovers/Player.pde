
class Player {

  float x;
  float y;
  float xspeed=0;
  float yspeed=0;
  float ch=0;
  PImage img;

  Player(float x, float y, float ch) {
    this.x=x;
    this.y=y;
    this.ch=ch;
    if (ch==1)
      this.img=loadImage("p1.png");
    else
      this.img=loadImage("pp2.png");
  }

  void show() {
    image(this.img, this.x, this.y, 50, 50);
  }

  void YUpdate(Platform platform) {
    float gravity=0.09;
    if (this.yspeed<=5) {
      this.yspeed+=gravity;
    }
    if (this.ch==platform.ch||platform.ch==0||platform.ch==3||platform.ch==4) {
      if (this.x+50>=platform.x&&this.x<=platform.x+platform.len) {
        if (this.y+50>=platform.y&&this.y<=platform.y+15&&this.yspeed>0) {
          this.y=platform.y-50;
          this.yspeed=0;
          if (platform.ch==0) {
            platform.ch=this.ch;
          }
        }
      }
    }
    this.y+=this.yspeed;
    if (this.y>800) {
      this.y=0;
    }
  }

  float acc;
  float drag;
  void XUpdate(VPlatform vplatform) {
    if (this.xspeed<=3&&this.xspeed>=-3) {
      this.xspeed+=acc;
    }
    
    if (this.ch==vplatform.ch||vplatform.ch==0||vplatform.ch==3||vplatform.ch==4) {
      if (this.y+50>=vplatform.y&&this.y<=vplatform.y+vplatform.len) {
        if (this.x+50>=vplatform.x&&this.x<=vplatform.x+30) {
          if(this.xspeed>0)
           this.x=vplatform.x-51;
          if(this.xspeed<0)
           this.x=vplatform.x+31;
           
          if (vplatform.ch==0) {
            vplatform.ch=this.ch;
          }
          this.xspeed=0;
        }
      }
    }    
    
    this.x+=this.xspeed;
    this.xspeed*=drag;
  }


  void control(Platform platform) {
      acc=0;
      drag=0.9;
      
    if (keyPressed) {
      if (keyCode==LEFT) {
        acc=-0.11;
        drag=1;
      }
      if (keyCode==RIGHT) {
        acc=0.11;
        drag=1;
      }
      if (keyCode==UP) {
        float jump=6;
        if (keyPressed) {
          if (keyCode==UP&&this.yspeed>=-3&&this.y+50==platform.y) {
            this.yspeed-=jump;
          }
        }
        drag=1;
      }
    }
  }
}
