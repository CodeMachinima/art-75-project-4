void drawHero(float x, float y) {
  pushMatrix();
  translate(x, y);


  image(heroImage, 0, 0);

  if (flashFrames > 0) {
    image(heroDamage, 0, 0); // hero gets damaged image
    fill(255, 80, 80, 120);
    ellipse(0, 60, 170, 240);
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

  //nextSentence();
}
