boolean AttackGif = false;
boolean EnemyAttackGif = false;
//int myTime = 0;
int myHeroAttackTime = 0;
int myEnemyAttackTime = 0;
int myChargeTime = 0;
int myHeroHurtTime = 0;
int myEnemyHurtTime = 0;

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
    if (myEnemyAttackTime + 0.7*1000 < millis()) { //waits a bit then exits else-if block
      HeroGotAttacked = true; 
      myHeroHurtTime = millis();
        if (attackSize==1) playerHP-=1;
  if (attackSize==2 || attackSize==3) playerHP-=2;
      EnemyAttackGif = false; // exits attack gif block
      }
  }
  
    else if (isCharging){
      image(enemyChargeGif, 0, 0);
      enemyChargeGif.play();
      if (myChargeTime + 0.825*1000 < millis()) {
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
    if (myEnemyHurtTime + 1*1000 < millis()) {
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
    heroAttackGif.jump(0);
    AttackGif = true;
    isCharging = false;
    myHeroAttackTime = millis();
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
