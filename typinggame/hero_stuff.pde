void drawHero(float x, float y) {
  pushMatrix();
  translate(x,y);
 
  
  image(heroImage,0,0);

  if (flashFrames > 0) {
    image(heroDamage, 0, 0); // hero gets damaged image
    //image(enemyDamage,width - 400,0); // enemy gets attack image
    fill(255, 80, 80, 120);
    ellipse(0, 60, 170, 240);
  }

  popMatrix();
}



void heroDamaged() {
  playerHP--;
  flashFrames = 12;
  screenShakeFrames = 12;

  if (playerHP <= 0) {
    playerHP = 0;
    gameOver = true;
    return;
  }

  nextSentence();
}
