class Fruits {
  
  //Score
  int Score;
  
  // Fruits
  
  int wf; // Fruit width
  int hf; // Fruit height
  
  // Fruit y coordinates and the speed
  
  float yf1;
  float sf1;

  float yf2;
  float sf2;

  float yf3; 
  float sf3;

  float yf4; 
  float sf4;

  float yf5;
  float sf5;

  float yf6;  
  float sf6;

  float yf7;  
  float sf7;

  float yf8; 
  float sf8;

  float yf9; 
  float sf9;

  float yf10;  
  float sf10;

  float yf11; 
  float sf11;

  float yf12; 
  float sf12;

  float yf13;  
  float sf13;

  float yf14; 
  float sf14;

  float yf15; 
  float sf15;

  float yf16;
  float sf16;

  float yf17;
  float sf17;

  float yf18;
  float sf18;

  float yf19;
  float sf19;

  float yf20; 
  float sf20;
  
  // Special Fruit x, y, and speed;
  
  float ysf;
  float xsf;
  float ssf;
  
  // This makes sure if you have lost
  
  boolean Loss;
  
  Fruits(){
    
    Score = 0;
    
    wf = 30;
    hf = 30; 
    
    ysf = -30000;
    xsf = random(0,800);
    ssf = random(0.08,5);
    
    yf1 = -9000;
    sf1 = random(0.08,2);

    yf2 = -9000;
    sf2 = random(0.08,2);

    yf3 = -8555; 
    sf3 = random(0.08,2);

    yf4 = -8000; 
    sf4 = random(0.08,2);

    yf5 = -7555;
    sf5 = random(0.08,2);

    yf6 = -7000;  
    sf6 = random(0.08,2);

    yf7 = -6555;  
    sf7 = random(0.08,2);

    yf8 = -6000; 
    sf8 = random(0.08,2);

    yf9 = -555; 
    sf9 = random(0.08,2);

    yf10 = -200;  
    sf10 = random(0.08,2);

    yf11 = -5555; 
    sf11 = random(0.08,2);

    yf12 = -5555; 
    sf12 = random(0.08,2);

    yf13 = -600;  
    sf13 = random(0.08,2);

    yf14 = -6555; 
    sf14 = random(0.08,2);

    yf15 = -7000; 
    sf15 = random(0.08,2);

    yf16 = -7555;
    sf16 = random(0.08,2);

    yf17 = -8000;
    sf17 = random(0.08,2);

    yf18 = -8555;
    sf18 = random(0.08,2);

    yf19 = -9555;
    sf19 = random(0.08,2);

    yf20 = -10000; 
    sf20 = random(0.08,2);
  }
  
  void FruitDrop()
  {
    // This activates the speed
    yf1 = yf1 + sf1;
    // If the apple goes down the bottom, it resets to the top at random speed
    if(yf1 > height)
    {
      yf1 = random(-100,-10000);
      sf1 = random(0.08,3.58);
    }
    // If the apple goes down to the block, it resets to the top at random speed and makes the block invisible, but it is actually a wall
    if (dist(5,yf1, Blocks.x1b, Blocks.y1b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t1 == 255)
    {
      yf1 = random(-100,-10000);
      sf1 = random(0.08,3.58);
      Blocks.y1b = 520;
      Blocks.t1 = 0;
    }
    // If the apple goes down to the tip of the tongue, it resets to the top at random speed and gives you points
    if (dist(5,yf1, PlayerandTongue.xt1, PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf1 = random(-100,-10000);
      sf1 = random(0.08,3.58);
      Score += random(1,10);
    }
    // If the apple goes down to the player, it resets to the top at random speed and activates loss
    if (dist(5,yf1,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf1 = random(-100,-10000);
      sf1 = random(0.08,3.58);
      Loss = true;
    }
    
    yf2 = yf2 + sf2;
    if(yf2 > height)
    {
      yf2 = random(-100,-10000);
      sf2 = random(0.08,3.58);
    }
    if (dist(45,yf2, Blocks.x2b, Blocks.y2b) < hf/RADIUS+ Blocks.hb/RADIUS && Blocks.t2 == 255)
    {
      yf2 = random(-100,-10000);
      sf2 = random(0.08,3.58);
      Blocks.y2b = 520;
      Blocks.t2 = 0;
    }
    if (dist(45,yf2, PlayerandTongue.xt1, PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+ PlayerandTongue.ht/RADIUS)
    {
      yf2 = random(-100,-10000);
      sf2 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(45,yf2,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf2 = random(-100,-10000);
      sf2 = random(0.08,3.58);
      Loss = true;
    }
    
    yf3 = yf3 + sf3;
    if(yf3 > height)
    {
      yf3 = random(-100,-10000);
      sf3 = random(0.08,3.58);
    }
    if (dist(85,yf3, Blocks.x3b, Blocks.y3b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t3 == 255)
    {
      yf3 = random(-100,-10000);
      sf3 = random(0.08,3.58);
      Blocks.y3b = 520;
      Blocks.t3 = 0;
    }
    if (dist(85,yf3, PlayerandTongue.xt1, PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf3 = random(-100,-10000);
      sf3 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(85,yf3,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf3 = random(-100,-10000);
      sf3 = random(0.08,3.58);
      Loss = true;
    }
    
    yf4 = yf4 + sf4;
    if(yf4 > height)
    {
      yf4 = random(-100,-10000);
      sf4 = random(0.08,3.58);
    }
    if (dist(125,yf4, Blocks.x4b, Blocks.y4b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t4 == 255)
    {
      yf4 = random(-100,-10000);
      sf4 = random(0.08,3.58);
      Blocks.y4b = 520;
      Blocks.t4 = 0;
    }
    if (dist(125,yf4,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf4 = random(-100,-10000);
      sf4 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(125,yf4,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf4 = random(-100,-10000);
      sf4 = random(0.08,3.58);
      Loss = true;
    }
    
    yf5 = yf5 + sf5;
    if(yf5 > height)
    {
      yf5 = random(-100,-10000);
      sf5 = random(0.08,3.58);
    }
    if (dist(165,yf5,Blocks.x5b,Blocks.y5b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t5 == 255)
    {
      yf5 = random(-100,-10000);
      sf5 = random(0.08,3.58);
      Blocks.y5b = 520;
      Blocks.t5 = 0;
    }
    if (dist(165,yf5,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf5 = random(-100,-10000);
      sf5 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(165,yf5,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf5 = random(-100,-10000);
      sf5 = random(0.08,3.58);
      Loss = true;
    }
    
    yf6 = yf6 + sf6;
    if(yf6 > height)
    {
      yf6 = random(-100,-10000);
      sf6 = random(0.08,3.58);
    }
     if (dist(205,yf6,Blocks.x6b,Blocks.y6b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t6 == 255)
    {
      yf6 = random(-100,-10000);
      sf6 = random(0.08,3.58);
      Blocks.y6b = 520;
      Blocks.t6 = 0;
    }
    if (dist(205,yf6,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf6 = random(-100,-10000);
      sf6 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(205,yf6,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf6 = random(-100,-10000);
      sf6 = random(0.08,3.58);
      Loss = true;
    }
    
    yf7 = yf7 + sf7;
    if(yf7 > height)
    {
      yf7 = random(-100,-10000);
      sf7 = random(0.08,3.58);
    }
    if (dist(245,yf7,Blocks.x7b,Blocks.y7b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t7 == 255)
    {
      yf7 = random(-100,-10000);
      sf7 = random(0.08,3.58);
      Blocks.y7b = 520;
      Blocks.t7 = 0;
    }
    if (dist(245,yf7,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf7 = random(-100,-10000);
      sf7 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(245,yf7,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf7 = random(-100,-10000);
      sf7 = random(0.08,3.58);
      Loss = true;
    }
    
    yf8 = yf8 + sf8;
    if(yf8 > height)
    {
      yf8 = random(-100,-10000);
      sf8 = random(0.08,3.58);
    }
    if (dist(285,yf8,Blocks.x8b,Blocks.y8b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t8 == 255)
    {
      yf8 = random(-100,-10000);
      sf8 = random(0.08,3.58);
      Blocks.y8b = 520;
      Blocks.t8 = 0;
    }
    if (dist(285,yf8,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf8 = random(-100,-10000);
      sf8 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(285,yf8,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf8 = random(-100,-10000);
      sf8 = random(0.08,3.58);
      Loss = true;
    }
    
    yf9 = yf9 + sf9;
    if(yf9 > height)
    {
      yf9 = random(-100,-10000);
      sf9 = random(0.08,3.58);
    }
    if (dist(325,yf9,Blocks.x9b,Blocks.y9b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t9 == 255)
    {
      yf9 = random(-100,-10000);
      sf9 = random(0.08,3.58);
      Blocks.y9b = 520;
      Blocks.t9 = 0;
    }
    if (dist(325,yf9,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf9 = random(-100,-10000);
      sf9 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(325,yf9,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf9 = random(-100,-10000);
      sf9 = random(0.08,3.58);
      Loss = true;
    }
    
    yf10 = yf10 + sf10;
    if(yf10 > height)
    {
      yf10 = random(-100,-10000);
      sf10 = random(0.08,3.58);
    }
    if (dist(365,yf10,Blocks.x10b,Blocks.y10b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t10 == 255)
    {
      yf10 = random(-100,-10000);
      sf10 = random(0.08,3.58);
      Blocks.y10b = 520;
      Blocks.t10 = 0;
    }
    if (dist(365,yf10,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf10 = random(-100,-10000);
      sf10 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(365,yf10,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf10 = random(-100,-10000);
      sf10 = random(0.08,3.58);
      Loss = true;
    }
    
    yf11 = yf11 + sf11;
    if(yf11 > height)
    {
      yf11 = random(-100,-10000);
      sf11 = random(0.08,3.58);
    }
    if (dist(405,yf11,Blocks.x11b,Blocks.y11b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t11 == 255)
    {
      yf11 = random(-100,-10000);
      sf11 = random(0.08,3.58);
      Blocks.y11b = 520;
      Blocks.t11 = 0;
    }
    if (dist(405,yf11,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf11 = random(-100,-10000);
      sf11 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(405,yf11,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf11 = random(-100,-10000);
      sf11 = random(0.08,3.58);
      Loss = true;
    }
    
    yf12 = yf12 + sf12;
    if(yf12 > height)
    {
      yf12 = random(-100,-10000);
      sf12 = random(0.08,3.58);
    }
    if (dist(445,yf12,Blocks.x12b,Blocks.y12b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t12 == 255)
    {
      yf12 = random(-100,-10000);
      sf12 = random(0.08,3.58);
      Blocks.y12b = 520;
      Blocks.t12 = 0;
    }
    if (dist(445,yf12,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf12 = random(-100,-10000);
      sf12 = random(0.08,3.58);
      Score += random(1,10);
      
    }
    if (dist(445,yf12,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf12 = random(-100,-10000);
      sf12 = random(0.08,3.58);
      Loss = true;
    }
    
    yf13 = yf13 + sf13;
    if(yf13 > height)
    {
      yf13 = random(-100,-10000);
      sf13 = random(0.08,3.58);
    }
    if (dist(485,yf13,Blocks.x13b,Blocks.y13b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t13 == 255)
    {
      yf13 = random(-100,-10000);
      sf13 = random(0.08,3.58);
      Blocks.y13b = 520;
      Blocks.t13 = 0;
    }
    if (dist(485,yf13,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf13 = random(-100,-10000);
      sf13 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(485,yf13,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf13 = random(-100,-10000);
      sf13 = random(0.08,3.58);
      Loss = true;
    }
    
    yf14 = yf14 + sf14;
    if(yf14 > height)
    {
      yf14 = random(-100,-10000);
      sf14 = random(0.08,3.58);
    }
    if (dist(525,yf14,Blocks.x14b,Blocks.y14b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t14 == 255)
    {
      yf14 = random(-100,-10000);
      sf14 = random(0.08,3.58);
      Blocks.y14b = 520;
      Blocks.t14 = 0;
    }
    if (dist(525,yf14,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf14 = random(-100,-10000);
      sf14 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(525,yf14,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf14 = random(-100,-10000);
      sf14 = random(0.08,3.58);
      Loss = true;
    }
    
    yf15 = yf15 + sf15;
    if(yf15 > height)
    {
      yf15 = random(-100,-10000);
      sf15 = random(0.08,3.58);
    }
    if (dist(565,yf15,Blocks.x15b,Blocks.y15b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t15 == 255)
    {
      yf15 = random(-100,-10000);
      sf15 = random(0.08,3.58);
      Blocks.y15b = 520;
      Blocks.t15 = 0;
    }
    if (dist(565,yf15,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf15 = random(-100,-10000);
      sf15 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(565,yf15,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf15 = random(-100,-10000);
      sf15 = random(0.08,3.58);
      Loss = true;
    }
    
    yf16 = yf16 + sf16;
    if(yf16 > height)
    {
      yf16 = random(-100,-1000);
      sf16 = random(0.08,3.58);
    }
    if (dist(605,yf16,Blocks.x16b,Blocks.y16b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t16 == 255)
    {
      yf16 = random(-100,-10000);
      sf16 = random(0.08,3.58);
      Blocks.y16b = 520;
      Blocks.t16 = 0;
    }
    if (dist(605,yf16,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf16 = random(-100,-10000);
      sf16 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(605,yf16,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf16 = random(-100,-10000);
      sf16 = random(0.08,3.58);
      Loss = true;
    }
    
    yf17 = yf17 + sf17;
    if(yf1 > height)
    {
      yf17 = random(-100,-1000);
      sf17 = random(0.08,3.58);
    }
    if (dist(645,yf17,Blocks.x17b,Blocks.y17b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t17 == 255)
    {
      yf17 = random(-100,-10000);
      sf17 = random(0.08,3.58);
      Blocks.y17b = 520;
      Blocks.t17 = 0;
    }
    if (dist(645,yf17,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf17 = random(-100,-10000);
      sf17 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(645,yf17,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf17 = random(-100,-10000);
      sf17 = random(0.08,3.58);
      Loss = true;
    }
    
    yf18 = yf18 + sf18;
    if(yf18 > height)
    {
      yf18 = random(-100,-10000);
      sf18 = random(0.08,3.58);
    }
    if (dist(685,yf18,Blocks.x18b,Blocks.y18b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t18 == 255)
    {
      yf18 = random(-100,-10000);
      sf18 = random(0.08,3.58);
      Blocks.y18b = 520;
      Blocks.t18 = 0;
    }
    if (dist(685,yf18,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf18 = random(-100,-10000);
      sf18 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(685,yf18,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf18 = random(-100,-10000);
      sf18 = random(0.08,3.58);
      Loss = true;
    }
    
    yf19 = yf19 + sf19;
    if(yf19 > height)
    {
      yf19 = random(-100,-10000);
      sf19 = random(0.08,3.58);
    }
    if (dist(725,yf19,Blocks.x19b,Blocks.y19b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t19 == 255)
    {
      yf19 = random(-100,-10000);
      sf19 = random(0.08,3.58);
      Blocks.y19b = 520;
      Blocks.t19 = 0;
    }
    if (dist(725,yf19,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf19 = random(-100,-10000);
      sf19 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(725,yf19,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf19 = random(-100,-10000);
      sf19 = random(0.08,3.58);
      Loss = true;
    }
    
    yf20 = yf20 + sf20;
    if(yf20 > height)
    {
      yf20 = random(-100,-10000);
      sf20 = random(0.08,3.58);
    }
    if (dist(765,yf20,Blocks.x20b,Blocks.y20b) < hf/RADIUS+Blocks.hb/RADIUS && Blocks.t20 == 255)
    {
      yf20 = random(-100,-10000);
      sf20 = random(0.08,3.58);
      Blocks.y20b = 520;
      Blocks.t20 = 0;
    }
    if (dist(765,yf20,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      yf20 = random(-100,-10000);
      sf20 = random(0.08,3.58);
      Score += random(1,10);
    }
    if (dist(765,yf20,PlayerandTongue.x,PlayerandTongue.y) < PlayerandTongue.hp/RADIUS+PlayerandTongue.wp/RADIUS)
    {
      yf20 = random(-100,-10000);
      sf20 = random(0.08,3.58);
      Loss = true;
    }
    
    // The special fruit, which is yellow, acts the same, but has a little different mechanic
    
    ysf = ysf + ssf;
    if(ysf > height)
    {
      ysf = -30000;
      ssf = random(0.08,5);
      xsf = random(0,800);
    }
    // If the tip of the tongue touches the fruit, then the blocks appear on the ground, having more movement
    if (dist(xsf,ysf,PlayerandTongue.xt1,PlayerandTongue.yt1) < PlayerandTongue.ht/RADIUS+PlayerandTongue.ht/RADIUS)
    {
      ysf = -30000;
      ssf = random(0.08,5);
      xsf = random(0,800);
      Blocks.y20b = 560;
      Blocks.t20 = 255;
      Blocks.y19b = 560;
      Blocks.t19 = 255;
      Blocks.y18b = 560;
      Blocks.t18 = 255;
      Blocks.y17b = 560;
      Blocks.t17 = 255;
      Blocks.y16b = 560;
      Blocks.t16 = 255;
      Blocks.y15b = 560;
      Blocks.t15 = 255;
      Blocks.y14b = 560;
      Blocks.t14 = 255;
      Blocks.y13b = 560;
      Blocks.t13 = 255;
      Blocks.y12b = 560;
      Blocks.t12 = 255;
      Blocks.y11b = 560;
      Blocks.t11 = 255;
      Blocks.y10b = 560;
      Blocks.t10 = 255;
      Blocks.y9b = 560;
      Blocks.t9 = 255;
      Blocks.y8b = 560;
      Blocks.t8 = 255;
      Blocks.y7b = 560;
      Blocks.t7 = 255;
      Blocks.y6b = 560;
      Blocks.t6 = 255;
      Blocks.y5b = 560;
      Blocks.t5 = 255;
      Blocks.y4b = 560;
      Blocks.t4 = 255;
      Blocks.y3b = 560;
      Blocks.t3 = 255;
      Blocks.y2b = 560;
      Blocks.t2 = 255;
      Blocks.y1b = 560;
      Blocks.t1 = 255;
      Score += random(10,100);
    }
    
  }
  // This displays the fruits
  void display()
  {
  PImage Fruit;
  PImage SFruit;
  Fruit = loadImage("Apples.png");
  SFruit = loadImage("Apple.png");
    
  fill(255);
  image(Fruit,5,yf1,wf,hf); // Fruit
  image(Fruit,45,yf2,wf,hf); // Fruit
  image(Fruit,85,yf3,wf,hf); // Fruit
  image(Fruit,125,yf4,wf,hf); // Fruit
  image(Fruit,165,yf5,wf,hf); // Fruit
  image(Fruit,205,yf6,wf,hf); // Fruit
  image(Fruit,245,yf7,wf,hf); // Fruit
  image(Fruit,285,yf8,wf,hf); // Fruit
  image(Fruit,325,yf9,wf,hf); // Fruit
  image(Fruit,365,yf10,wf,hf); // Fruit
  image(Fruit,405,yf11,wf,hf); // Fruit
  image(Fruit,445,yf12,wf,hf); // Fruit
  image(Fruit,485,yf13,wf,hf); // Fruit
  image(Fruit,525,yf14,wf,hf); // Fruit
  image(Fruit,565,yf15,wf,hf); // Fruit
  image(Fruit,605,yf16,wf,hf); // Fruit
  image(Fruit,645,yf17,wf,hf); // Fruit
  image(Fruit,685,yf18,wf,hf); // Fruit
  image(Fruit,725,yf19,wf,hf); // Fruit
  image(Fruit,765,yf20,wf,hf);
  fill(255,255,0);
  image(SFruit,xsf,ysf,wf,hf); // Special Fruit
  }
}
