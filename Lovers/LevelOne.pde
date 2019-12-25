class LevelOne {
Platform[] platforms=new Platform[4];
VPlatform[] vplatforms=new VPlatform[2];
Player[] players=new Player[2];
int win=0;
  void start() {
    platforms[0]=new Platform(680, 500, 150, 3);
    platforms[1]=new Platform(680, 200, 150, 4);
    platforms[2]=new Platform(980, 350, 150, 0);
    platforms[3]=new Platform(450, 350, 150, 0);

    vplatforms[0]=new VPlatform(660, 320, 150, 0);
    vplatforms[1]=new VPlatform(820, 320, 150, 0);

    players[0]=new Player(700, 480, 1);
    players[1]=new Player(750, 480, 2);
  }

  void run(int count) {
    for (int i=0; i<platforms.length; i++) {
      platforms[i].show();
      players[0].YUpdate(platforms[i]);
      players[1].YUpdate(platforms[i]);
      players[count].control(platforms[i]);
      win(platforms[i], players[0], players[1]);
  }

    for (int j=0; j<vplatforms.length; j++) {
      vplatforms[j].show();
      players[0].XUpdate(vplatforms[j]);
      players[1].XUpdate(vplatforms[j]);
    }

    players[0].show();
    players[1].show();
  }
  
  void win(Platform p, Player p1, Player p2) {
    if (p.ch==4&&p.y==p1.y+50&&p.y==p2.y+50) {
      PImage h;
      h=loadImage("heart.png");
      image(h,p.x+50, p.y-105, 50, 50);
      this.win=1; 
    } 
    else{
      this.win=0;
    }
  }
}
