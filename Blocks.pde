class Blocks {
  
  // Blocks
  float wb; // Block width
  float hb; // Block height
  
  // Block's x, y, and transparency

  float t1; 
  float y1b;
  float x1b;

  float t2; 
  float y2b;
  float x2b;

  float t3; 
  float y3b;
  float x3b;

  float t4; 
  float y4b;
  float x4b;

  float t5; 
  float y5b;
  float x5b;

  float t6; 
  float y6b;
  float x6b;

  float t7; 
  float y7b;
  float x7b;

  float t8; 
  float y8b;
  float x8b;

  float t9; 
  float y9b;
  float x9b;

  float t10; 
  float y10b;
  float x10b;

  float t11; 
  float y11b;
  float x11b;

  float t12; 
  float y12b;
  float x12b;

  float t13; 
  float y13b;
  float x13b;

  float t14; 
  float y14b;
  float x14b;

  float t15; 
  float y15b;
  float x15b;

  float t16; 
  float y16b;
  float x16b;

  float t17; 
  float y17b;
  float x17b;

  float t18; 
  float y18b;
  float x18b;

  float t19; 
  float y19b;
  float x19b;

  float t20; 
  float y20b;
  float x20b;

  float t21; 
  float y21b;
  float x21b;
  
  Blocks() {
    
    wb = 40; 
    hb = 40; 

    t1 = 255; 
    y1b = 560;
    x1b = 0;

    t2 = 255; 
    y2b = 560;
    x2b = 40;

    t3 = 255; 
    y3b = 560;
    x3b = 80;

    t4 = 255; 
    y4b = 560;
    x4b = 120;

    t5 = 255; 
    y5b = 560;
    x5b = 160;

    t6 = 255; 
    y6b = 560;
    x6b = 200;

    t7 = 255; 
    y7b = 560;
    x7b = 240;

    t8 = 255; 
    y8b = 560;
    x8b = 280;

    t9 = 255; 
    y9b = 560;
    x9b = 320;

    t10 = 255; 
    y10b = 560;
    x10b = 360;

    t11 = 255; 
    y11b = 560;
    x11b = 400;

    t12 = 255; 
    y12b = 560;
    x12b = 440;

    t13 = 255; 
    y13b = 560;
    x13b = 480;

    t14 = 255; 
    y14b = 560;
    x14b = 520;

    t15 = 255; 
    y15b = 560;
    x15b = 560;

    t16 = 255; 
    y16b = 560;
    x16b = 600;

    t17 = 255; 
    y17b = 560;
    x17b = 640;

    t18 = 255; 
    y18b = 560;
    x18b = 680;

    t19 = 255; 
    y19b = 560;
    x19b = 720;

    t20 = 255; 
    y20b = 560;
    x20b = 760;

    t21 = 255; 
    y21b = 560;
    x21b = 800;
  }
void display()
{
  // This will display the image
  PImage Block;
  Block = loadImage("Blocks.png");
  
  tint(255,t1);
  image(Block,x1b,y1b,wb,hb); // 1st Block
  
  tint(255,t2);
  image(Block,x2b,y2b,wb,hb); // 2nd Block
  
  tint(255,t3);
  image(Block,x3b,y3b,wb,hb); // 3rd Block
  
  tint(255,t4);
  image(Block,x4b,y4b,wb,hb); // 4th Block
  
  tint(255,t5);
  image(Block,x5b,y5b,wb,hb); // 5th Block
  
  tint(255,t6);
  image(Block,x6b,y6b,wb,hb); // 6th Block
  
  tint(255,t7);
  image(Block,x7b,y7b,wb,hb); // 7th Block
  
  tint(255,t8);
  image(Block,x8b,y8b,wb,hb); // 8th Block
  
  tint(255,t9);
  image(Block,x9b,y9b,wb,hb); // 9th Block
  
  tint(255,t10);
  image(Block,x10b,y10b,wb,hb); // 10th Block
  
  tint(255,t11);
  image(Block,x11b,y11b,wb,hb); // 11th Block
  
  tint(255,t12);
  image(Block,x12b,y12b,wb,hb); // 12th Block
  
  tint(255,t13);
  image(Block,x13b,y13b,wb,hb); // 13th Block
  
  tint(255,t14);
  image(Block,x14b,y14b,wb,hb); // 14th Block
  
  tint(255,t15);
  image(Block,x15b,y15b,wb,hb); // 15th Block
  
  tint(255,t16);
  image(Block,x16b,y16b,wb,hb); // 16th Block
  
  tint(255,t17);
  image(Block,x17b,y17b,wb,hb); // 17th Block
  
  tint(255,t18);
  image(Block,x18b,y18b,wb,hb); // 18th Block
  
  tint(255,t19);
  image(Block,x19b,y19b,wb,hb); // 19th Block
  
  tint(255,t20);
  image(Block,x20b,y20b,wb,hb); // 20th Block
  
  tint(255,t21);
  image(Block,x21b,y21b,wb,hb); // 21st Block
}
}
