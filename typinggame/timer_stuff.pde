void updateTimers() {
  if (!gameOver && !win) {
    roundTime--;
    if (roundTime <= 0) {
      heroDamaged();
    }
  }

  if (screenShakeFrames > 0) screenShakeFrames--;
  if (flashFrames > 0) flashFrames--;
  if (successFrames > 0) successFrames--;
}




void drawTimer(float x, float y, float w, float h) {
  float ratio = constrain((float)roundTime / roundTimeMax, 0, 1);

  fill(20, 24, 38, 220);
  rect(x, y, w, h, 16);

  int timerColor = color(110, 220, 255);
  if (ratio < 0.5) timerColor = color(255, 190, 80);
  if (ratio < 0.25) timerColor = color(255, 90, 90);

  fill(timerColor);
  rect(x, y, w * ratio, h, 16);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(24);
  text(nf(ceil(roundTime / 60.0), 2) + "s", x + w/2, y + h/2 - 1);
}
