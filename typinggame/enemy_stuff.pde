boolean AttackGif = false;
boolean EnemyAttackGif = false;
int myTime = 0;
void drawEnemy(float x, float y) {
  pushMatrix();
  translate(x, y);


  // need to fill out below with enemy assets
  if (!EnemyAttackGif) {
    image(enemyImage, 0, 0);
  } else {
    //image(heroAttackGif, 0, 0);
    //heroAttackGif.play();
    if (myTime + 0.75*1000 < millis()) {
      HeroGotAttacked = true;
      myTime = millis();
      EnemyAttackGif = false;
    }
  }

  if (EnemyGotAttacked) {

    fill(255, 0, 0, 50);
    ellipse(170, 175, 200, 300);
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
    if (myTime + 1*1000 < millis()) {
      EnemyGotAttacked = false;
    }
    pushMatrix();
  }

  popMatrix();
}

void checkTypedSentence() {
  if (typedText.equals(currentSentence)) {
    if (attackSize==1) enemyHP-=1;
    if (attackSize==2) enemyHP-=2;
    if (attackSize==3) enemyHP-=3;
    // heroAttackGif.play();

    AttackGif = true;
    isCharging = false;
    myTime = millis();
    successFrames = 12;
    screenShakeFrames = 12;


    if (enemyHP <= 0) {
      enemyHP = 0;
      win = true;
      return;
    }

    gameScreen = 1;

    //nextSentence();
  }
}
