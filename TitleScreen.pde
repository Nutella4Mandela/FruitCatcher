class TitleScreen {
  String startGame = "Click To Start Game";
  int modeStart = 0;
  PImage background;
  PImage TitleScreen;
  PImage Block;
  int playernumFrames = 6;
  int frames = 0;
  float xb = 0;
  float sb = 2;
  
  void display() {
    xb = xb-sb;
    background = loadImage("EpicBackground.png");
    TitleScreen = loadImage("Fruit Catcher.png");
    PImage[] Player = new PImage[playernumFrames];
    Player[0] = loadImage("Walk1.png");
    Player[1] = loadImage("Walk2.png");
    Player[2] = loadImage("Walk3.png");
    Player[3] = loadImage("Walk4.png");
    Player[4] = loadImage("Walk5.png");
    Player[5] = loadImage("Idle1.png");
    Block = loadImage("Blocks.png");
    background(100);
    fill(0,0,0);
    image(background,0,0);
    image(TitleScreen,0,0);
    textSize(30);
    text(startGame, 220, height/1.5);
    image(Player[frames],100,520);
    image(Block,xb,560);
    image(Block,xb+40,560);
    image(Block,xb+80,560);
    image(Block,xb+120,560);
    image(Block,xb+160,560);
    image(Block,xb+200,560);
    image(Block,xb+240,560);
    image(Block,xb+280,560);
    image(Block,xb+320,560);
    image(Block,xb+360,560);
    image(Block,xb+400,560);
    image(Block,xb+440,560);
    image(Block,xb+480,560);
    image(Block,xb+520,560);
    image(Block,xb+560,560);
    image(Block,xb+600,560);
    image(Block,xb+640,560);
    image(Block,xb+680,560);
    image(Block,xb+720,560);
    image(Block,xb+760,560);
    image(Block,xb+800,560);
    
    if(xb<=-40){
      xb = 0;
    }
    frames++;
    if(frames == playernumFrames) {
      frames = 0;
    }
}
}
