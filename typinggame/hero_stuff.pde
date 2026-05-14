boolean EnemyGotAttacked =false;
void drawHero(float x, float y) {
  pushMatrix();
  translate(x, y);

  if (!AttackGif && !isCharging) { //shows the default image when not attacking or charging
    image(heroImage, 0, 0);

    } 
    
  else if (AttackGif) { //when attacking

    image(heroAttackGif, 0, 0);
    heroAttackGif.play();
    
    if (myTime + 0.75*1000 < millis()) { //waits a bit then exits else-if block
      EnemyGotAttacked = true; //triggers enemy hurt animation (the red stuff and screen shake) after wizard finishes attack animation
      myHurtTime = millis();
      if (attackSize==1) enemyHP-=1;
    if (attackSize==2) enemyHP-=2;
    if (attackSize==3) enemyHP-=3;
   
      AttackGif = false; // exits attack gif block
      }
    }
    
  else if (isCharging) {
    image(heroChargeGif, 0, 0); //plays wizard charging gif
    heroChargeGif.play();
    if (myChargeTime + 0.55*1000 < millis()) {
      heroChargeGif.pause(); //pauses gif so it doesn't keep looping
    }
  }




 
  if (HeroGotAttacked) {           
      popMatrix();
      pushMatrix();
    if (screenShakeFrames > 0) {
      fill(255, 0, 0, 50);
      ellipse(310, 330, 200, 300);
    }
    popMatrix();
    if (screenShakeFrames > 0) screenShakeFrames--;
    if (flashFrames > 0) flashFrames--;
    float shakeX = 0;
    float shakeY = 0;
    if (screenShakeFrames > 0) {
      shakeX = random(-8, 8);
      shakeY = random(-8, 8);
    }
    translate(shakeX, shakeY);
    if (myHurtTime + 1*1000 < millis()) {
      HeroGotAttacked = false;
      
    }
    pushMatrix();
  }


  popMatrix();
}



void heroDamaged() {
  //if (attackSize==1) playerHP-=1;
  //if (attackSize==2 || attackSize==3) playerHP-=2;
  flashFrames = 12;
  screenShakeFrames = 12;
  
  //HeroGotAttacked = true;
  //myHurtTime = millis();

  //if (playerHP <= 0) {
  //  playerHP = 0;
  //  gameOver = true;
  //  return;
  //}


  gameScreen = 1;
}
