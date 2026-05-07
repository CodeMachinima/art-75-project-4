boolean EnemyGotAttacked =false;
void drawHero(float x, float y) {
  pushMatrix();
  translate(x, y);

  if (!AttackGif && !isCharging) {
    image(heroImage, 0, 0);
    heroChargeGif.jump(0);
    heroAttackGif.jump(0);
  } else if (AttackGif) {
    //translate(-450, -250);
    image(heroAttackGif, 0, 0);
    heroAttackGif.play();
    if (myTime + 0.75*1000 < millis()) {
      EnemyGotAttacked = true;
      myTime = millis();


      AttackGif = false;
    }
  } else if (isCharging) {
    //translate(-450, -250);
    image(heroChargeGif, 0, 0);
    heroChargeGif.play();
    if (myTime + 0.5*1000 < millis()) {
      heroChargeGif.pause();
    }
  }




  //if (flashFrames > 0) {
  //  image(heroDamage, 0, 0); // hero gets damaged image
  //  fill(255, 0, 0, 50);
  //  ellipse(0, 60, 170, 240);
  //}
  if (HeroGotAttacked) {

    fill(255, 0, 0, 50);
    ellipse(0, 175, 200, 300);
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
    if (myTime + 1*1000 < millis()) {
      HeroGotAttacked = false;
    }
    pushMatrix();
  }


  popMatrix();
}



void heroDamaged() {
  if (attackSize==1) playerHP-=1;
  if (attackSize==2 || attackSize==3) playerHP-=2;
  flashFrames = 12;
  screenShakeFrames = 12;

  if (playerHP <= 0) {
    playerHP = 0;
    gameOver = true;
    return;
  }


  gameScreen = 1;
}
