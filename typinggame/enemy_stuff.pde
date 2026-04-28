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
