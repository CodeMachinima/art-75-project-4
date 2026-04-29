void drawEnemy(float x, float y) {
  pushMatrix();
  translate(x, y);



  image(enemyImage, 0, 0);

  if (successFrames > 0) {
    image(enemyDamage, 0, 0);
    fill(255, 255, 255, 50);
    ellipse(0, 50, 200, 230);
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

}

void checkTypedSentence() {
  if (typedText.equals(currentSentence)) {
    if (attackSize==1) enemyHP-=1;
    if (attackSize==2) enemyHP-=2;
    if (attackSize==3) enemyHP-=3;
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
