// Nelson Villegas
// 12/3/2020
// FRUIT CATCHER

// I start by initializing the classes
TitleScreen TitleScreen; 
PlayerandTongue PlayerandTongue;
Blocks Blocks;
Fruits Fruits;


int t = 0; // Transparency of the Game Over text
int modeStart = 1; // This activates what should be on the screen
String GameOver = "Game Over";

// This initialize the music of the game
// I had to import sound in my library
import processing.sound.*;
SoundFile song;

//This initialize the background
PImage background;

void setup() {
  // I setup everything here
  size(800,600);
  TitleScreen = new TitleScreen();
  PlayerandTongue = new PlayerandTongue();
  Blocks = new Blocks();
  Fruits = new Fruits();
  song = new SoundFile(this, "Something.wav");
  background = loadImage("EpicBackground.png");
}

void draw() {
  noStroke();
  frameRate(60);
  // I had to edit the background a bit because it made my game a lot slower
  background(245,220,135);
  fill(50,0,130);
  rect(0,0,800,300);
  pushMatrix();
  scale(0.35);
  image(background,0,600);
  image(background,800,600);
  image(background,1600,600);
  popMatrix();
  
  // This activates the gameplay screen
  if(modeStart == 2) {
    Blocks.display();
    PlayerandTongue.PlayerMovement();
    PlayerandTongue.display();
    Fruits.FruitDrop();
    Fruits.display();
    
    //This is the score
    str(Fruits.Score); 
    text(Fruits.Score, 100, 50);
    
    //This is the Game Over text
    textSize(30);
    fill(0,0,0,t);
    text(GameOver, 300, height/2);
    
  }
  // If the modeStart is 1, then it goes to the title screen
  if(modeStart == 1) 
  {
   TitleScreen.display();
  }
  
  // If the player lost, then the song stops and the transparency of the Game Over text shows
  if(PlayerandTongue.y >= 800) {
    song.stop();
    t = 255;
  }
}

//This activates the key presses and releases in the PlayerandTongue class
void keyPressed(){
    if (modeStart ==2) {
    PlayerandTongue.keyPressed();
  }
}
  
void keyReleased(){
  if (modeStart == 2)
  {
  PlayerandTongue.keyReleased();
  }
}

// If the Game Over text is shown, then you can click on the screen
// If you do click on the screen, everything resets and goes back to the title screen
void mousePressed() {
  if(t == 255){
    setup(); // This resets everything
    modeStart = 1;
    t = 0;
    Fruits.Score = 0;
  }
  // This is what makes the title screen transition to the gameplay
  else if(modeStart ==1){
     modeStart = 2;
     song.loop(); // This starts the music
  }
}
