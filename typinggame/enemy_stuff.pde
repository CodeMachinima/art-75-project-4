void drawEnemy(float x, float y) {
  pushMatrix();
  translate(x, y);

 
  
  image(enemyImage, 0,0);

  if (successFrames > 0) {
    image(enemyDamage,0,0);
    fill(255, 255, 255, 50);
    ellipse(0, 50, 200, 230);
  }

  popMatrix();
}

void checkTypedSentence() {
  if (typedText.equals(currentSentence)) {
    enemyHP--;
    successFrames = 12;

    if (enemyHP <= 0) {
      enemyHP = 0;
      win = true;
      return;
    }

    nextSentence();
  }
}
