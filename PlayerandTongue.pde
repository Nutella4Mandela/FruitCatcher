class PlayerandTongue {
  float x; // The player x coordinates 
  float y; // The player y coordinates
  float wp; // Actual player object width
  float hp; // Actual player object height
  float move; //Speed of the player

  // Tongue x, y, and transparency

  float wt; // Tongue width
  float ht; // Tongue height


  float xt1;
  float yt1;  
  float tt1; 

  float xt2; 
  float yt2;  
  float tt2; 

  float xt3; 
  float yt3;  
  float tt3; 

  float xt4; 
  float yt4;  
  float tt4; 

  float xt5; 
  float yt5;  
  float tt5; 

  float xt6; 
  float yt6;  
  float tt6; 

  float xt7; 
  float yt7;  
  float tt7; 

  float xt8; 
  float yt8;  
  float tt8; 

  float xt9; 
  float yt9;  
  float tt9; 

  float xt10; 
  float yt10;  
  float tt10; 

  float xt11; 
  float yt11;  
  float tt11; 

  float xt12; 
  float yt12;  
  float tt12; 

  float xt13; 
  float yt13;  
  float tt13; 

  float xt14; 
  float yt14;  
  float tt14; 

  float xt15; 
  float yt15;  
  float tt15; 

  float xt16; 
  float yt16;  
  float tt16; 

  float xt17; 
  float yt17;  
  float tt17; 

  float xt18; 
  float yt18;  
  float tt18;

  float xt19; 
  float yt19;  
  float tt19;

  float xt20; 
  float yt20;  
  float tt20;

  float xt21; 
  float yt21;  
  float tt21;

  float xt22; 
  float yt22;  
  float tt22;
  
  boolean tongueL; //Activates left tongue
  boolean tongueR; // Activates right tongue

  boolean notmove; // Forces the player not to move
  boolean tongueControlR; // Keeps the right side in place
  boolean tongueControlL; // Keeps the left side in place
  boolean notongue; // Forces the player not to use the tongue
  
  PlayerandTongue() {
    x = 100; 
    y = 520;
    wp = 40;
    hp = 40; 
    move = 10;

    wt = 20; // Tongue width
    ht = 20; // Tongue height


    xt1 = 105; 
    yt1 = 525;  
    tt1 = 0; 

    xt2 = 105; 
    yt2 = 525;  
    tt2 = 0; 

    xt3 = 105; 
    yt3 = 525;  
    tt3 = 0; 

    xt4 = 105; 
    yt4 = 525;  
    tt4 = 0; 

    xt5 = 105; 
    yt5 = 525;  
    tt5 = 0; 

    xt6 = 105; 
    yt6 = 525;  
    tt6 = 0; 

    xt7 = 105; 
    yt7 = 525;  
    tt7 = 0; 

    xt8 = 105; 
    yt8 = 525;  
    tt8 = 0; 

    xt9 = 105; 
    yt9 = 525;  
    tt9 = 0; 

    xt10 = 105; 
    yt10 = 525;  
    tt10 = 0; 

    xt11 = 105; 
    yt11 = 525;  
    tt11 = 0; 

    xt12 = 105; 
    yt12 = 525;  
    tt12 = 0; 

    xt13 = 105; 
    yt13 = 525;  
    tt13 = 0; 

    xt14 = 105; 
    yt14 = 525;  
    tt14 = 0; 

    xt15 = 105; 
    yt15 = 525;  
    tt15 = 0; 

    xt16 = 105; 
    yt16 = 525;  
    tt16 = 0; 

    xt17 = 105; 
    yt17 = 525;  
    tt17 = 0; 

    xt18 = 105; 
    yt18 = 525;  
    tt18 = 0;

    xt19 = 105; 
    yt19 = 525;  
    tt19 = 0;

    xt20 = 105; 
    yt20 = 525;  
    tt20 = 0;

    xt21 = 105; 
    yt21 = 525;  
    tt21 = 0;

    xt22 = 105; 
    yt22 = 525;  
    tt22 = 0;
  }
  
  // If I press J or L, 3 booleans are activated
// tongueL and tongueR actually helps the object move
// tongueControl controls the position so it wouldn't go flying around when it doesn't need to
// notmove keeps the player from moving when the tongue mechanic is used
public void keyPressed()
{
  if(key == 'j' || key == 'J' && notongue == false) {tongueL = true; notmove = true; tongueControlL = true;}
  if(key == 'l' || key == 'L' && notongue == false) {tongueR = true; notmove = true; tongueControlR = true;}
}

// If I stop pressing J or L, 1 boolean is deactivated
public void keyReleased()
{
  if(key == 'j' || key == 'J' && notongue == false) tongueL = false;
  if(key == 'l' || key == 'L' && notongue == false) tongueR = false;
}
void PlayerMovement(){
  //This saves the position of the player and the tongue
  float pxWas = x;
  float pyWas = y;
  float px1Was = xt1;
  float py1Was = yt1;
  float py2Was = yt2;
  float px2Was = xt2;
  float px3Was = xt3;
  float py3Was = yt3;
  float px4Was = xt4;
  float py4Was = yt4;
  float px5Was = xt5;
  float py5Was = yt5;
  float px6Was = xt6;
  float py6Was = yt6;
  float px7Was = xt7;
  float py7Was = yt7;
  float px8Was = xt8;
  float py8Was = yt8;
  float px9Was = xt9;
  float py9Was = yt9;
  float px10Was = xt10;
  float py10Was = yt10;
  float px11Was = xt11;
  float py11Was = yt11;
  float px12Was = xt12;
  float py12Was = yt12;
  float px13Was = xt13;
  float py13Was = yt13;
  float px14Was = xt14;
  float py14Was = yt14;
  float px15Was = xt15;
  float py15Was = yt15;
  float px16Was = xt16;
  float py16Was = yt16;
  float px17Was = xt17;
  float py17Was = yt17;
  float px18Was = xt18;
  float py18Was = yt18;
  float px19Was = xt19;
  float py19Was = yt19;
  float px20Was = xt20;
  float py20Was = yt20;
  float px21Was = xt21;
  float py21Was = yt21;
  float px22Was = xt22;
  float py22Was = yt22;
  
  
  // Tongue on the right side
  // I made sure tongueControlL is deactivated so it would not mess with the right side code
  if(tongueR == true && tongueControlR == true && tongueControlL == false){
      xt1+=20; // Tip of the tongue width
      yt1-=50; // Tip of the tongue height
      tt1=255;
    if(yt1 <= 510 && tongueControlR == true && tongueControlL == false){
      xt2+=20; // Part of tongue width
      yt2-=50; //Part of tongue height
      tt2=255;
    }
    if(yt2 <= 510 && tongueControlR == true && tongueControlL == false){
      xt3+=20; // Part of tongue width
      yt3-=50; //Part of tongue height
      tt3=255;
    }
    if(yt3 <= 510 && tongueControlR == true && tongueControlL == false){
      xt4+=20; // Part of tongue width
      yt4-=50; //Part of tongue height
      tt4=255;
    }
    if(yt4 <= 510 && tongueControlR == true && tongueControlL == false){
      xt5+=20; // Part of tongue width
      yt5-=50; //Part of tongue height
      tt5=255;
    }
    if(yt5 <= 510 && tongueControlR == true && tongueControlL == false){
      xt6+=20; // Part of tongue width
      yt6-=50; //Part of tongue height
      tt6=255;
    }
    if(yt6 <= 510 && tongueControlR == true && tongueControlL == false){
      xt7+=20; // Part of tongue width
      yt7-=50; //Part of tongue height
      tt7=255;
    }
    if(yt7 <= 510 && tongueControlR == true && tongueControlL == false){
      xt8+=20; // Part of tongue width
      yt8-=50; //Part of tongue height
      tt8=255;
    }
    if(yt8 <= 510 && tongueControlR == true && tongueControlL == false){
      xt9+=20; // Part of tongue width
      yt9-=50; //Part of tongue height
      tt9=255;
    }
    if(yt9 <= 510 && tongueControlR == true && tongueControlL == false){
      xt10+=20; // Part of tongue width
      yt10-=50; //Part of tongue height
      tt10=255;
    }
    if(yt10 <= 510 && tongueControlR == true && tongueControlL == false){
      xt11+=20; // Part of tongue width
      yt11-=50; //Part of tongue height
      tt11=255;
    }
    if(yt11 <= 510 && tongueControlR == true && tongueControlL == false){
      xt12+=20; // Part of tongue width
      yt12-=50; //Part of tongue height
      tt12=255;
    }
    if(yt12 <= 510 && tongueControlR == true && tongueControlL == false){
      xt13+=20; // Part of tongue width
      yt13-=50; //Part of tongue height
      tt13=255;
    }
    if(yt13 <= 510 && tongueControlR == true && tongueControlL == false){
      xt14+=20; // Part of tongue width
      yt14-=50; //Part of tongue height
      tt14=255;
    }
    if(yt14 <= 510 && tongueControlR == true && tongueControlL == false){
      xt15+=20; // Part of tongue width
      yt15-=50; //Part of tongue height
      tt15=255;
    }
    if(yt15 <= 510 && tongueControlR == true && tongueControlL == false){
      xt16+=20; // Part of tongue width
      yt16-=50; //Part of tongue height
      tt16=255;
    }
    if(yt16 <= 510 && tongueControlR == true && tongueControlL == false){
      xt17+=20; // Part of tongue width
      yt17-=50; //Part of tongue height
      tt17=255;
    }
    if(yt17 <= 510 && tongueControlR == true && tongueControlL == false){
      xt18+=20; // Part of tongue width
      yt18-=50; //Part of tongue height
      tt18=255;
    }
    if(yt18 <= 510 && tongueControlR == true && tongueControlL == false){
      xt19+=20; // Part of tongue width
      yt19-=50; //Part of tongue height
      tt19=255;
    }
    if(yt19 <= 510 && tongueControlR == true && tongueControlL == false){
      xt20+=20; // Part of tongue width
      yt20-=50; //Part of tongue height
      tt20=255;
    }
    if(yt20 <= 510 && tongueControlR == true && tongueControlL == false){
      xt21+=20; // Part of tongue width
      yt21-=50; //Part of tongue height
      tt21=255;
    }
    if(yt21 <= 510 && tongueControlR == true && tongueControlL == false){
      xt22+=20; // Part of tongue width
      yt22-=50; //Part of tongue height
      tt22=255;
    }
    
    
    if(yt1 <= 90 && tongueControlR == true && tongueControlL == false){
      yt1 = 90; // Tip of the tongue height fixed position
      xt1 = x+173; // Tip of the tongue width fixed position
    }
     if(yt2 <= 110  && tongueControlR == true && tongueControlL == false){
      yt2 = 110; // Part of tongue height fixed position
      xt2 = x+166; // Part of tongue width fixed position
    }
     if(yt3 <= 130  && tongueControlR == true && tongueControlL == false){
      yt3 = 130; // Part of tongue height fixed position
      xt3 = x+159; // Part of tongue width fixed position
    }
     if(yt4 <= 150  && tongueControlR == true && tongueControlL == false){
      yt4 = 150; // Part of tongue height fixed position
      xt4 = x+152; // Part of tongue width fixed position
    }
     if(yt5 <= 170  && tongueControlR == true && tongueControlL == false){
      yt5 = 170; // Part of tongue height fixed position
      xt5 = x+145; // Part of tongue width fixed position
    }
     if(yt6 <= 190  && tongueControlR == true && tongueControlL == false){
      yt6 = 190; // Part of tongue height fixed position
      xt6 = x+138; // Part of tongue width fixed position
    }
     if(yt7 <= 210  && tongueControlR == true && tongueControlL == false){
      yt7 = 210; // Part of tongue height fixed position
      xt7 = x+131; // Part of tongue width fixed position
    }
    if(yt8 <= 230  && tongueControlR == true && tongueControlL == false){
      yt8 = 230; // Part of tongue height fixed position
      xt8 = x+124; // Part of tongue width fixed position
    }
    if(yt9 <= 250  && tongueControlR == true && tongueControlL == false){
      yt9 = 250; // Part of tongue height fixed position
      xt9 = x+117; // Part of tongue width fixed position
    }
    if(yt10 <= 270  && tongueControlR == true && tongueControlL == false){
      yt10 = 270; // Part of tongue height fixed position
      xt10 = x+110; // Part of tongue width fixed position
    }
    if(yt11 <= 290  && tongueControlR == true && tongueControlL == false){
      yt11 = 290; // Part of tongue height fixed position
      xt11 = x+103; // Part of tongue width fixed position
    }
    if(yt12 <= 310  && tongueControlR == true && tongueControlL == false){
      yt12 = 310; // Part of tongue height fixed position
      xt12 = x+96; // Part of tongue width fixed position
    }
    if(yt13 <= 330  && tongueControlR == true && tongueControlL == false){
      yt13 = 330; // Part of tongue height fixed position
      xt13 = x+89; // Part of tongue width fixed position
    }
    if(yt14 <= 350  && tongueControlR == true && tongueControlL == false){
      yt14 = 350; // Part of tongue height fixed position
      xt14 = x+82; // Part of tongue width fixed position
    }
    if(yt15 <= 370  && tongueControlR == true && tongueControlL == false){
      yt15 = 370; // Part of tongue height fixed position
      xt15 = x+75; // Part of tongue width fixed position
    }
    if(yt16 <= 390  && tongueControlR == true && tongueControlL == false){
      yt16 = 390; // Part of tongue height fixed position
      xt16 = x+68; // Part of tongue width fixed position
    }
    if(yt17 <= 410  && tongueControlR == true && tongueControlL == false){
      yt17 = 410; // Part of tongue height fixed position
      xt17 = x+61; // Part of tongue width fixed position
    }
    if(yt18 <= 430  && tongueControlR == true && tongueControlL == false){
      yt18 = 430; // Part of tongue height fixed position
      xt18 = x+54; // Part of tongue width fixed position
    }
    if(yt19 <= 450  && tongueControlR == true && tongueControlL == false){
      yt19 = 450; // Part of tongue height fixed position
      xt19 = x+47; // Part of tongue width fixed position
    }
    if(yt20 <= 470  && tongueControlR == true && tongueControlL == false){
      yt20 = 470; // Part of tongue height fixed position
      xt20 = x+40; // Part of tongue width fixed position
    }
    if(yt21 <= 490  && tongueControlR == true && tongueControlL == false){
      yt21 = 490; // Part of tongue height fixed position
      xt21 = x+33; // Part of tongue width fixed position
    }
    if(yt22 <= 510  && tongueControlR == true && tongueControlL == false){
      yt22 = 510; // Part of tongue height fixed position
      xt22 = x+26; // Part of tongue width fixed position
    }
    
    }
  if(tongueR == false && tongueControlR == true && tongueControlL == false){
      xt1-=20; // Tip of the tongue width
      yt1+=50; // Tip of the tongue height
      xt2-=20; 
      yt2+=50; 
      xt3-=20; 
      yt3+=50; 
      xt4-=20; 
      yt4+=50; 
      xt5-=20; 
      yt5+=50; 
      xt6-=20; 
      yt6+=50; 
      xt7-=20; 
      yt7+=50; 
      xt8-=20; 
      yt8+=50; 
      xt9-=20; 
      yt9+=50; 
      xt10-=20; 
      yt10+=50; 
      xt11-=20; 
      yt11+=50; 
      xt12-=20; 
      yt12+=50; 
      xt13-=20; 
      yt13+=50; 
      xt14-=20; 
      yt14+=50;
      xt15-=20; 
      yt15+=50;
      xt16-=20;
      yt16+=50;
      xt17-=20; 
      yt17+=50;
      xt18-=20; 
      yt18+=50; 
      xt19-=20; 
      yt19+=50; 
      xt20-=20; 
      yt20+=50; 
      xt21-=20; 
      yt21+=50; 
      xt22-=20; 
      yt22+=50; 
    }
  if(yt1 >= 525 && tongueControlR == true && tongueControlL == false){
      yt1 = 525; // Tip of the tongue height back to its original position
      xt1 = x+5; // Tip of the tongue width back to its original position
      notmove = false; // Now the player can move
      tongueControlR = false; // tongueControlR is deactivated since it was already used
      tt1 = 0;
    }
  if(yt2 >= 525){
      yt2 = 525; // Part of tongue height back to its original position
      xt2 = x+5; // Part of tongue width back to its original position
      tt2 = 0;
    }
  if(yt3 >= 525){
      yt3 = 525; // Part of tongue height back to its original position
      xt3 = x+5; // Part of tongue width back to its original position
      tt3 = 0;
    }
  if(yt4 >= 525){
      yt4 = 525; // Part of tongue height back to its original position
      xt4 = x+5; // Part of tongue width back to its original position
      tt4 = 0;
    }
  if(yt5 >= 525){
      yt5 = 525; // Part of tongue height back to its original position
      xt5 = x+5; // Part of tongue width back to its original position
      tt5 = 0;
    }
  if(yt6 >= 525){
      yt6 = 525; // Part of tongue height back to its original position
      xt6 = x+5; // Part of tongue width back to its original position
      tt6 = 0;
    }
  if(yt7 >= 525){
      yt7 = 525; // Part of tongue height back to its original position
      xt7 = x+5; // Part of tongue width back to its original position
      tt7 = 0;
    }
  if(yt8 >= 525){
      yt8 = 525; // Part of tongue height back to its original position
      xt8 = x+5; // Part of tongue width back to its original position
      tt8 = 0;
    }
  if(yt9 >= 525){
      yt9 = 525; // Part of tongue height back to its original position
      xt9 = x+5; // Part of tongue width back to its original position
      tt9 = 0;
    }
  if(yt10 >= 525){
      yt10 = 525; // Part of tongue height back to its original position
      xt10 = x+5; // Part of tongue width back to its original position
      tt10 = 0;
    }
  if(yt11 >= 525){
      yt11 = 525; // Part of tongue height back to its original position
      xt11 = x+5; // Part of tongue width back to its original position
      tt11 = 0;
    }
  if(yt12 >= 525){
      yt12 = 525; // Part of tongue height back to its original position
      xt12 = x+5; // Part of tongue width back to its original position
      tt12 = 0;
    }
  if(yt13 >= 525){
      yt13 = 525; // Part of tongue height back to its original position
      xt13 = x+5; // Part of tongue width back to its original position
      tt13 = 0;
    }
  if(yt14 >= 525){
      yt14 = 525; // Part of tongue height back to its original position
      xt14 = x+5; // Part of tongue width back to its original position
      tt14 = 0;
    }
  if(yt15 >= 525){
      yt15 = 525; // Part of tongue height back to its original position
      xt15 = x+5; // Part of tongue width back to its original position
      tt15 = 0;
    }
  if(yt16 >= 525){
      yt16 = 525; // Part of tongue height back to its original position
      xt16 = x+5; // Part of tongue width back to its original position
      tt16 = 0;
    }
  if(yt17 >= 525){
      yt17 = 525; // Part of tongue height back to its original position
      xt17 = x+5; // Part of tongue width back to its original position
      tt17 = 0;
    }
  if(yt18 >= 525){
      yt18 = 525; // Part of tongue height back to its original position
      xt18 = x+5; // Part of tongue width back to its original position
      tt18 = 0;
    }
  if(yt19 >= 525){
      yt19 = 525; // Part of tongue height back to its original position
      xt19 = x+5; // Part of tongue width back to its original position
      tt19 = 0;
    }
  if(yt20 >= 525){
      yt20 = 525; // Part of tongue height back to its original position
      xt20 = x+5; // Part of tongue width back to its original position
      tt20 = 0;
    }
  if(yt21 >= 525){
      yt21 = 525; // Part of tongue height back to its original position
      xt21 = x+5; // Part of tongue width back to its original position
      tt21 = 0;
    }
  if(yt22 >= 525){
      yt22 = 525; // Part of tongue height back to its original position
      xt22 = x+5; // Part of tongue width back to its original position
      tt22 = 0;
    }
    
  //Tongue on the left side
  // I made sure tongueControlR is deactivated so it would not mess with the left side code
  if(tongueL == true && tongueControlR == false && tongueControlL == true){
      xt1-=20; // Tip of the tongue width
      yt1-=50; // Tip of the tongue height
      tt1 = 255;
    if(yt1 <= 510 && tongueControlR == false && tongueControlL == true){
      xt2-=20;
      yt2-=50;
      tt2 = 255;
    }
    if(yt2 <= 510 && tongueControlR == false && tongueControlL == true){
      xt3-=20;
      yt3-=50;
      tt3 = 255;
    }
    if(yt3 <= 510 && tongueControlR == false && tongueControlL == true){
      xt4-=20;
      yt4-=50;
      tt4 = 255;
    }
    if(yt4 <= 510 && tongueControlR == false && tongueControlL == true){
      xt5-=20;
      yt5-=50;
      tt5 = 255;
    }
    if(yt5 <= 510 && tongueControlR == false && tongueControlL == true){
      xt6-=20;
      yt6-=50;
      tt6 = 255;
    }
    if(yt6 <= 510 && tongueControlR == false && tongueControlL == true){
      xt7-=20;
      yt7-=50;
      tt7 = 255;
    }
    if(yt7 <= 510 && tongueControlR == false && tongueControlL == true){
      xt8-=20;
      yt8-=50;
      tt8 = 255;
    }
    if(yt8 <= 510 && tongueControlR == false && tongueControlL == true){
      xt9-=20;
      yt9-=50;
      tt9 = 255;
    }
    if(yt9 <= 510 && tongueControlR == false && tongueControlL == true){
      xt10-=20;
      yt10-=50;
      tt10 = 255;
    }
    if(yt10 <= 510 && tongueControlR == false && tongueControlL == true){
      xt11-=20;
      yt11-=50;
      tt11 = 255;
    }
    if(yt11 <= 510 && tongueControlR == false && tongueControlL == true){
      xt12-=20;
      yt12-=50;
      tt12 = 255;
    }
    if(yt12 <= 510 && tongueControlR == false && tongueControlL == true){
      xt13-=20;
      yt13-=50;
      tt13 = 255;
    }
    if(yt13 <= 510 && tongueControlR == false && tongueControlL == true){
      xt14-=20;
      yt14-=50;
      tt14 = 255;
    }
    if(yt14 <= 510 && tongueControlR == false && tongueControlL == true){
      xt15-=20;
      yt15-=50;
      tt15 = 255;
    }
    if(yt15 <= 510 && tongueControlR == false && tongueControlL == true){
      xt16-=20;
      yt16-=50;
      tt16 = 255;
    }
    if(yt16 <= 510 && tongueControlR == false && tongueControlL == true){
      xt17-=20;
      yt17-=50;
      tt17 = 255;
    }
    if(yt17 <= 510 && tongueControlR == false && tongueControlL == true){
      xt18-=20;
      yt18-=50;
      tt18 = 255;
    }
    if(yt18 <= 510 && tongueControlR == false && tongueControlL == true){
      xt19-=20;
      yt19-=50;
      tt19 = 255;
    }
    if(yt19 <= 510 && tongueControlR == false && tongueControlL == true){
      xt20-=20;
      yt20-=50;
      tt20 = 255;
    }
    if(yt20 <= 510 && tongueControlR == false && tongueControlL == true){
      xt21-=20;
      yt21-=50;
      tt21 = 255;
    }
    if(yt21 <= 510 && tongueControlR == false && tongueControlL == true){
      xt22-=20;
      yt22-=50;
      tt22 = 255;
    }
    
    if(yt1 <= 90 && tongueControlR == false && tongueControlL == true){
      yt1 = 90; // Tip of the tongue height fixed position
      xt1 = x-154; // Tip of the tongue width fixed position
    }
    if(yt2 <= 110 && tongueControlR == false && tongueControlL == true){
      yt2 = 110; // Part of tongue height fixed position
      xt2 = x-147; // Part of tongue width fixed position
    }
    if(yt3 <= 130 && tongueControlR == false && tongueControlL == true){
      yt3 = 130; // Part of tongue height fixed position
      xt3 = x-140; // Part of tongue width fixed position
    }
   if(yt4 <= 150 && tongueControlR == false && tongueControlL == true){
      yt4 = 150; // Part of tongue height fixed position
      xt4 = x-133; // Part of tongue width fixed position
    }
   if(yt5 <= 170 && tongueControlR == false && tongueControlL == true){
      yt5 = 170; // Part of tongue height fixed position
      xt5 = x-126; // Part of tongue width fixed position
    }
    if(yt6 <= 190 && tongueControlR == false && tongueControlL == true){
      yt6 = 190; // Part of tongue height fixed position
      xt6 = x-119; // Part of tongue width fixed position
    }
    if(yt7 <= 210 && tongueControlR == false && tongueControlL == true){
      yt7 = 210; // Part of tongue height fixed position
      xt7 = x-112; // Part of tongue width fixed position
    }
    if(yt8 <= 230 && tongueControlR == false && tongueControlL == true){
      yt8 = 230; // Part of tongue height fixed position
      xt8 = x-105; // Part of tongue width fixed position
    }
    if(yt9 <= 250 && tongueControlR == false && tongueControlL == true){
      yt9 = 250; // Part of tongue height fixed position
      xt9 = x-98; // Part of tongue width fixed position
    }
    if(yt10 <= 270 && tongueControlR == false && tongueControlL == true){
      yt10 = 270; // Part of tongue height fixed position
      xt10 = x-91; // Part of tongue width fixed position
    }
    if(yt11 <= 290 && tongueControlR == false && tongueControlL == true){
      yt11 = 290; // Part of tongue height fixed position
      xt11 = x-84; // Part of tongue width fixed position
    }
    if(yt12 <= 310 && tongueControlR == false && tongueControlL == true){
      yt12 = 310; // Part of tongue height fixed position
      xt12 = x-77; // Part of tongue width fixed position
    }
    if(yt13 <= 330 && tongueControlR == false && tongueControlL == true){
      yt13 = 330; // Part of tongue height fixed position
      xt13 = x-70; // Part of tongue width fixed position
    }
    if(yt14 <= 350 && tongueControlR == false && tongueControlL == true){
      yt14 = 350; // Part of tongue height fixed position
      xt14 = x-63; // Part of tongue width fixed position
    }
    if(yt15 <= 370 && tongueControlR == false && tongueControlL == true){
      yt15 = 370; // Part of tongue height fixed position
      xt15 = x-56; // Part of tongue width fixed position
    }
    if(yt16 <= 390 && tongueControlR == false && tongueControlL == true){
      yt16 = 390; // Part of tongue height fixed position
      xt16 = x-49; // Part of tongue width fixed position
    }
    if(yt17 <= 410 && tongueControlR == false && tongueControlL == true){
      yt17 = 410; // Part of tongue height fixed position
      xt17 = x-42; // Part of tongue width fixed position
    }
    if(yt18 <= 430 && tongueControlR == false && tongueControlL == true){
      yt18 = 430; // Part of tongue height fixed position
      xt18 = x-35; // Part of tongue width fixed position
    }
    if(yt19 <= 450 && tongueControlR == false && tongueControlL == true){
      yt19 = 450; // Part of tongue height fixed position
      xt19 = x-28; // Part of tongue width fixed position
    }
    if(yt20 <= 470 && tongueControlR == false && tongueControlL == true){
      yt20 = 470; // Part of tongue height fixed position
      xt20 = x-21; // Part of tongue width fixed position
    }
    if(yt21 <= 490 && tongueControlR == false && tongueControlL == true){
      yt21 = 490; // Part of tongue height fixed position
      xt21 = x-14; // Part of tongue width fixed position
    }
    if(yt22 <= 510 && tongueControlR == false && tongueControlL == true){
      yt22 = 510; // Part of tongue height fixed position
      xt22 = x-7; // Part of tongue width fixed position
    }
    
    }
  if(tongueL == false && tongueControlR == false && tongueControlL == true){
      xt1+=20; // Tip of the tongue width
      yt1+=50; // Tip of the tongue height
      xt2+=20;
      yt2+=50;
      xt3+=20;
      yt3+=50;
      xt4+=20;
      yt4+=50;
      xt5+=20;
      yt5+=50;
      xt6+=20;
      yt6+=50;
      xt7+=20;
      yt7+=50;
      xt8+=20;
      yt8+=50;
      xt9+=20;
      yt9+=50;
      xt10+=20;
      yt10+=50;
      xt11+=20;
      yt11+=50;
      xt12+=20;
      yt12+=50;
      xt13+=20;
      yt13+=50;
      xt14+=20;
      yt14+=50;
      xt15+=20;
      yt15+=50;
      xt16+=20;
      yt16+=50;
      xt17+=20;
      yt17+=50;
      xt18+=20;
      yt18+=50;
      xt19+=20;
      yt19+=50;
      xt20+=20;
      yt20+=50;
      xt21+=20;
      yt21+=50;
      xt22+=20;
      yt22+=50;
  }
   if(yt1 >= 525 && tongueControlR == false && tongueControlL == true){
      yt1 = y+5; // Tip of the tongue height back to its original position
      xt1 = x+5; // Tip of the tongue width back to its original position
      tt1 = 0;
      notmove = false; // Now the player can move
      tongueControlL = false; // tongueControlR is deactivated since it was already used
    }
    if(yt2 >= 525){
      yt2 = 525; // Part of tongue height back to its original position
      xt2 = x+5; // Part of tongue width back to its original position
      tt2 = 0;
    }
  if(yt3 >= 525){
      yt3 = 525; // Part of tongue height back to its original position
      xt3 = x+5; // Part of tongue width back to its original position
      tt3 = 0;
    }
  if(yt4 >= 525){
      yt4 = 525; // Part of tongue height back to its original position
      xt4 = x+5; // Part of tongue width back to its original position
      tt4 = 0;
    }
  if(yt5 >= 525){
      yt5 = 525; // Part of tongue height back to its original position
      xt5 = x+5; // Part of tongue width back to its original position
      tt5 = 0;
    }
  if(yt6 >= 525){
      yt6 = 525; // Part of tongue height back to its original position
      xt6 = x+5; // Part of tongue width back to its original position
      tt6 = 0;
    }
  if(yt7 >= 525){
      yt7 = 525; // Part of tongue height back to its original position
      xt7 = x+5; // Part of tongue width back to its original position
      tt7 = 0;
    }
  if(yt8 >= 525){
      yt8 = 525; // Part of tongue height back to its original position
      xt8 = x+5; // Part of tongue width back to its original position
      tt8 = 0;
    }
  if(yt9 >= 525){
      yt9 = 525; // Part of tongue height back to its original position
      xt9 = x+5; // Part of tongue width back to its original position
      tt9 = 0;
    }
  if(yt10 >= 525){
      yt10 = 525; // Part of tongue height back to its original position
      xt10 = x+5; // Part of tongue width back to its original position
      tt10 = 0;
    }
  if(yt11 >= 525){
      yt11 = 525; // Part of tongue height back to its original position
      xt11 = x+5; // Part of tongue width back to its original position
      tt11 = 0;
    }
  if(yt12 >= 525){
      yt12 = 525; // Part of tongue height back to its original position
      xt12 = x+5; // Part of tongue width back to its original position
      tt12 = 0;
    }
  if(yt13 >= 525){
      yt13 = 525; // Part of tongue height back to its original position
      xt13 = x+5; // Part of tongue width back to its original position
      tt13 = 0;
    }
  if(yt14 >= 525){
      yt14 = 525; // Part of tongue height back to its original position
      xt14 = x+5; // Part of tongue width back to its original position
      tt14 = 0;
    }
  if(yt15 >= 525){
      yt15 = 525; // Part of tongue height back to its original position
      xt15 = x+5; // Part of tongue width back to its original position
      tt15 = 0;
    }
  if(yt16 >= 525){
      yt16 = 525; // Part of tongue height back to its original position
      xt16 = x+5; // Part of tongue width back to its original position
      tt16 = 0;
    }
  if(yt17 >= 525){
      yt17 = 525; // Part of tongue height back to its original position
      xt17 = x+5; // Part of tongue width back to its original position
      tt17 = 0;
    }
  if(yt18 >= 525){
      yt18 = 525; // Part of tongue height back to its original position
      xt18 = x+5; // Part of tongue width back to its original position
      tt18 = 0;
    }
  if(yt19 >= 525){
      yt19 = 525; // Part of tongue height back to its original position
      xt19 = x+5; // Part of tongue width back to its original position
      tt19 = 0;
    }
  if(yt20 >= 525){
      yt20 = 525; // Part of tongue height back to its original position
      xt20 = x+5; // Part of tongue width back to its original position
      tt20 = 0;
    }
  if(yt21 >= 525){
      yt21 = 525; // Part of tongue height back to its original position
      xt21 = x+5; // Part of tongue width back to its original position
      tt21 = 0;
    }
  if(yt22 >= 525){
      yt22 = 525; // Part of tongue height back to its original position
      xt22 = x+5; // Part of tongue width back to its original position
      tt22 = 0;
    }
    
    
   // I made sure that if you press j and l at the same time, it will reset
   if(tongueControlR == true && tongueControlL == true)
   {
     yt1 = y+5;
     xt1 = x+5;
     tt1 = 0;
     yt2 = y+5;
     xt2 = x+5;
     tt2 = 0;
     yt3 = y+5;
     xt3 = x+5;
     tt3 = 0;
     yt4 = y+5;
     xt4 = x+5;
     tt4 = 0;
     yt5 = y+5;
     xt5 = x+5;
     tt5 = 0;
     yt6 = y+5;
     xt6 = x+5;
     tt6 = 0;
     yt7 = y+5;
     xt7 = x+5;
     tt7 = 0;
     yt8 = y+5;
     xt8 = x+5;
     tt8 = 0;
     yt9 = y+5;
     xt9 = x+5;
     tt9 = 0;
     yt10 = y+5;
     xt10 = x+5;
     tt10 = 0;
     yt11 = y+5;
     xt11 = x+5;
     tt11 = 0;
     yt12 = y+5;
     xt12 = x+5;
     tt12 = 0;
     yt13 = y+5;
     xt13 = x+5;
     tt13 = 0;
     yt14 = y+5;
     xt14 = x+5;
     tt14 = 0;
     yt15 = y+5;
     xt15 = x+5;
     tt15 = 0;
     yt16 = y+5;
     xt16 = x+5;
     tt16 = 0;
     yt17 = y+5;
     xt17 = x+5;
     tt17 = 0;
     yt18 = y+5;
     xt18 = x+5;
     tt18 = 0;
     yt19 = y+5;
     xt19 = x+5;
     tt19 = 0;
     yt20 = y+5;
     xt20 = x+5;
     tt20 = 0;
     yt21 = y+5;
     xt21 = x+5;
     tt21 = 0;
     yt22 = y+5;
     xt22 = x+5;
     tt22 = 0;
     notmove = false;
     tongueControlL = false;
     tongueControlR = false;
   }
    
    // Moving the player if notmove is deactivated
    // The tongue will follow the player
    if(keyPressed){
      if(key == 'd' && notmove == false || key == 'D' && notmove == false){
        x+=move; // Player movement
        xt1+=move; // Tongue movement
        xt2+=move;
        xt3+=move; 
        xt4+=move;
        xt5+=move;
        xt6+=move;
        xt7+=move;
        xt8+=move;
        xt9+=move;
        xt10+=move;
        xt11+=move;
        xt12+=move;
        xt13+=move;
        xt14+=move;
        xt15+=move;
        xt16+=move;
        xt17+=move;
        xt18+=move;
        xt19+=move;
        xt20+=move;
        xt21+=move;
        xt22+=move;
        x = constrain(x,0, width - 40); //Constrain player from going more than the edge
        xt1 = constrain(xt1,0, width - 40); //Constrain tongue from going more than the edge
        xt2 = constrain(xt2,0, width - 40); //Constrain tongue from going more than the edge
        xt3 = constrain(xt3,0, width - 40); //Constrain tongue from going more than the edge
        xt4 = constrain(xt4,0, width - 40); //Constrain tongue from going more than the edge
        xt5 = constrain(xt5,0, width - 40); //Constrain tongue from going more than the edge
        xt6 = constrain(xt6,0, width - 40); //Constrain tongue from going more than the edge
        xt7 = constrain(xt7,0, width - 40); //Constrain tongue from going more than the edge
        xt8 = constrain(xt8,0, width - 40); //Constrain tongue from going more than the edge
        xt9 = constrain(xt9,0, width - 40); //Constrain tongue from going more than the edge
        xt10 = constrain(xt10,0, width - 40); //Constrain tongue from going more than the edge
        xt11 = constrain(xt11,0, width - 40); //Constrain tongue from going more than the edge
        xt12 = constrain(xt12,0, width - 40); //Constrain tongue from going more than the edge
        xt13 = constrain(xt13,0, width - 40); //Constrain tongue from going more than the edge
        xt14 = constrain(xt14,0, width - 40); //Constrain tongue from going more than the edge
        xt15 = constrain(xt15,0, width - 40); //Constrain tongue from going more than the edge
        xt16 = constrain(xt16,0, width - 40); //Constrain tongue from going more than the edge
        xt17 = constrain(xt17,0, width - 40); //Constrain tongue from going more than the edge
        xt18 = constrain(xt18,0, width - 40); //Constrain tongue from going more than the edge
        xt19 = constrain(xt19,0, width - 40); //Constrain tongue from going more than the edge
        xt20 = constrain(xt20,0, width - 40); //Constrain tongue from going more than the edge
        xt21 = constrain(xt21,0, width - 40); //Constrain tongue from going more than the edge
        xt22 = constrain(xt22,0, width - 40); //Constrain tongue from going more than the edge
      }
      
      else if(key == 'a' && notmove == false || key == 'A' && notmove == false){
        x-=move; // Player movement
        xt1-=move; // Tongue movement
        xt2-=move;
        xt3-=move; 
        xt4-=move;
        xt5-=move;
        xt6-=move;
        xt7-=move;
        xt8-=move;
        xt9-=move;
        xt10-=move;
        xt11-=move;
        xt12-=move;
        xt13-=move;
        xt14-=move;
        xt15-=move;
        xt16-=move;
        xt17-=move;
        xt18-=move;
        xt19-=move;
        xt20-=move;
        xt21-=move;
        xt22-=move;
        xt1 = constrain(0,xt1, width - 40); //Constrain tongue from going more than the edge
        x = constrain(0,x, width - 40); //Constrain player from going more than the edge
        xt2 = constrain(0,xt2, width - 40); //Constrain tongue from going more than the edge
        xt3 = constrain(0,xt3, width - 40); //Constrain tongue from going more than the edge
        xt4 = constrain(0,xt4, width - 40); //Constrain tongue from going more than the edge
        xt5 = constrain(0,xt5, width - 40); //Constrain tongue from going more than the edge
        xt6 = constrain(0,xt6, width - 40); //Constrain tongue from going more than the edge
        xt7 = constrain(0,xt7, width - 40); //Constrain tongue from going more than the edge
        xt8 = constrain(0,xt8, width - 40); //Constrain tongue from going more than the edge
        xt9 = constrain(0,xt9, width - 40); //Constrain tongue from going more than the edge
        xt10 = constrain(0,xt10, width - 40); //Constrain tongue from going more than the edge
        xt11 = constrain(0,xt11, width - 40); //Constrain tongue from going more than the edge
        xt12 = constrain(0,xt12, width - 40); //Constrain tongue from going more than the edge
        xt13 = constrain(0,xt13, width - 40); //Constrain tongue from going more than the edge
        xt14 = constrain(0,xt14, width - 40); //Constrain tongue from going more than the edge
        xt15 = constrain(0,xt15, width - 40); //Constrain tongue from going more than the edge
        xt16 = constrain(0,xt16, width - 40); //Constrain tongue from going more than the edge
        xt17 = constrain(0,xt17, width - 40); //Constrain tongue from going more than the edge
        xt18 = constrain(0,xt18, width - 40); //Constrain tongue from going more than the edge
        xt19 = constrain(0,xt19, width - 40); //Constrain tongue from going more than the edge
        xt20 = constrain(0,xt20, width - 40); //Constrain tongue from going more than the edge
        xt21 = constrain(0,xt21, width - 40); //Constrain tongue from going more than the edge
        xt22 = constrain(0,xt22, width - 40); //Constrain tongue from going more than the edge
      }
      }
      
     // If the block is invisible, it will act like a wall
     if(dist(x, y,Blocks.x1b, Blocks.y1b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t1 == 0 || dist(x, y, Blocks.x2b, Blocks.y2b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t2 == 0 || dist(x, y, Blocks.x3b, Blocks.y3b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t3 == 0 || dist(x, y, Blocks.x4b, Blocks.y4b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t4 == 0 || dist(x, y, Blocks.x5b, Blocks.y5b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t5 == 0 || dist(x, y, Blocks.x6b, Blocks.y6b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t6 == 0 || dist(x, y, Blocks.x7b, Blocks.y7b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t7 == 0 || dist(x, y, Blocks.x8b, Blocks.y8b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t8 == 0 || dist(x, y, Blocks.x9b, Blocks.y9b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t9 == 0 || dist(x, y, Blocks.x10b, Blocks.y10b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t10 == 0 || dist(x, y, Blocks.x11b, Blocks.y11b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t11 == 0 || dist(x, y, Blocks.x12b, Blocks.y12b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t12 == 0 || dist(x, y, Blocks.x13b, Blocks.y13b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t13 == 0 || dist(x, y, Blocks.x14b, Blocks.y14b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t14 == 0 || dist(x, y,Blocks.x15b, Blocks.y15b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t15 == 0 || dist(x, y, Blocks.x16b, Blocks.y16b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t16 == 0 || dist(x, y, Blocks.x17b, Blocks.y17b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t17 == 0 || dist(x, y, Blocks.x18b, Blocks.y18b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t18 == 0 || dist(x, y, Blocks.x19b, Blocks.y19b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t19 == 0 || dist(x, y, Blocks.x20b, Blocks.y20b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t20 == 0 || dist(x, y, Blocks.x21b, Blocks.y21b) < Blocks.wb/RADIUS+wp/RADIUS && Blocks.t21 == 0) 
  {
    x = pxWas;
    y = pyWas;
    xt1 = px1Was;
    yt1 = py1Was;
    xt2 = px2Was;
    yt2 = py2Was;
    xt3 = px3Was;
    yt3 = py3Was;
    xt4 = px4Was;
    yt4 = py4Was;
    xt5 = px5Was;
    yt5 = py5Was;
    xt6 = px6Was;
    yt6 = py6Was;
    xt7 = px7Was;
    yt7 = py7Was;
    xt8 = px8Was;
    yt8 = py8Was;
    xt9 = px9Was;
    yt9 = py9Was;
    xt10 = px10Was;
    yt10 = py10Was;
    xt11 = px11Was;
    yt11 = py11Was;
    xt12 = px12Was;
    yt12 = py12Was;
    xt13 = px13Was;
    yt13 = py13Was;
    xt14 = px14Was;
    yt14 = py14Was;
    xt15 = px15Was;
    yt15 = py15Was;
    xt16 = px16Was;
    yt16 = py16Was;
    xt17 = px17Was;
    yt17 = py17Was;
    xt18 = px18Was;
    yt18 = py18Was;
    xt19 = px19Was;
    yt19 = py19Was;
    xt20 = px20Was;
    yt20 = py20Was;
    xt21 = px21Was;
    yt21 = py21Was;
    xt22 = px22Was;
    yt22 = py22Was;
  } 
  
  if(Fruits.Loss== true)
        {
          notmove = true;
          notongue = true;
          y+=2;
          xt1=-1000;
          xt2=-1000;
          xt3=-1000; 
          xt4=-1000;
          xt5=-1000;
          xt6=-1000;
          xt7=-1000;
          xt8=-1000;
          xt9=-1000;
          xt10=-1000;
          xt11=-1000;
          xt12=-1000;
          xt13=-1000;
          xt14=-1000;
          xt15=-1000;
          xt16=-1000;
          xt17=-1000;
          xt18=-1000;
          xt19=-1000;
          xt20=-1000;
          xt21=-1000;
          xt22=-1000;
        }
      
}

void display()
{
  frameRate(60);
  PImage PlayerIdle;
  PlayerIdle = loadImage("RabbitIdle.gif");
  
  fill(255);
  image(PlayerIdle,x,y,wp,hp); // Player
  
  fill(255,0,0,tt20);
  rect(xt22,yt22,wt,ht);
  
  fill(255,0,0,tt20);
  rect(xt21,yt21,wt,ht);
  
  fill(255,0,0,tt20);
  rect(xt20,yt20,wt,ht);
  
  fill(255,0,0,tt19);
  rect(xt19,yt19,wt,ht);
  
  fill(255,0,0,tt18);
  rect(xt18,yt18,wt,ht);
  
  fill(255,0,0,tt17);
  rect(xt17,yt17,wt,ht);
  
  fill(255,0,0,tt16);
  rect(xt16,yt16,wt,ht);
  
  fill(255,0,0,tt15);
  rect(xt15,yt15,wt,ht);
  
  fill(255,0,0,tt14);
  rect(xt14,yt14,wt,ht);
  
  fill(255,0,0,tt13);
  rect(xt13,yt13,wt,ht);
  
  fill(255,0,0,tt12);
  rect(xt12,yt12,wt,ht);
  
  fill(255,0,0,tt11);
  rect(xt11,yt11,wt,ht);
  
  fill(255,0,0,tt10);
  rect(xt10,yt10,wt,ht);
  
  fill(255,0,0,tt9);
  rect(xt9,yt9,wt,ht);
  
  fill(255,0,0,tt8);
  rect(xt8,yt8,wt,ht);
  
  fill(255,0,0,tt7);
  rect(xt7,yt7,wt,ht);
  
  fill(255,0,0,tt6);
  rect(xt6,yt6,wt,ht);
  
  fill(255,0,0,tt5);
  rect(xt5,yt5,wt,ht);
  
  fill(255,0,0,tt4);
  rect(xt4,yt4,wt,ht);
  
  fill(255,0,0,tt3);
  rect(xt3,yt3,wt,ht);
  
  fill(255,0,0,tt2);
  rect(xt2,yt2,wt,ht);
  
  fill(255,0,0,tt1);
  rect(xt1,yt1,wt,ht,4); // Tongue tip
  
  
}
}
