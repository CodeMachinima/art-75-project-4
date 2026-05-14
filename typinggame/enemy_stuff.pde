boolean AttackGif = false;
boolean EnemyAttackGif = false;
int myTime = 0;
int myChargeTime = 0;
int myHurtTime = 0;

// need to implement enemy animation and fix hero hurt animation

void drawEnemy(float x, float y) {
  pushMatrix();
  translate(x, y);


  // need to fill out below with enemy assets
  if (!EnemyAttackGif && !isCharging) { 
    image(enemyImage, 0, 0);
  }
  if(EnemyAttackGif){
    image(enemyAttackGif, 0, 0); // add enemy attack
    enemyAttackGif.play();
    if (myTime + 0.75*1000 < millis()) { //waits a bit then exits else-if block
      HeroGotAttacked = true; 
      myHurtTime = millis();
        if (attackSize==1) playerHP-=1;
  if (attackSize==2 || attackSize==3) playerHP-=2;
      EnemyAttackGif = false; // exits attack gif block
      }
  }
  
    else if (isCharging){
      image(enemyChargeGif, 0, 0);
      enemyChargeGif.play();
      if (myChargeTime + 0.8*1000 < millis()) {
      enemyChargeGif.pause();
      }
    }
  

  if (EnemyGotAttacked) {

    if (screenShakeFrames > 0){
      fill(255, 0, 0, 50);
      ellipse(170, 175, 200, 300);
    }
    popMatrix();
    if (screenShakeFrames > 0) screenShakeFrames--;
    if (successFrames > 0) successFrames--;
    float shakeX = 0;
    float shakeY = 0;
    if (screenShakeFrames > 0) {
      shakeX = random(-8, 8);
      shakeY = random(-8, 8);

    }
    translate(shakeX, shakeY);
    if (myHurtTime + 1*1000 < millis()) {
      EnemyGotAttacked = false;
      
    }
   
    pushMatrix();
  }

  popMatrix();
}

void checkTypedSentence() {
  if (typedText.equals(currentSentence)) {
    //if (attackSize==1) enemyHP-=1;
    //if (attackSize==2) enemyHP-=2;
    //if (attackSize==3) enemyHP-=3;

    AttackGif = true;
    isCharging = false;
    myTime = millis();
    successFrames = 12;
    screenShakeFrames = 12;


    //if (enemyHP <= 0) {
    //  enemyHP = 0;
    //  win = true;
    //  return;
    //}

    gameScreen = 1;

    //nextSentence();
  }
}
