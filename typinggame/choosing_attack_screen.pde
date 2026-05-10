boolean isCharging = false; //<>//
void choosingAttackScreen() {
  isCharging = false;
  drawBackground();
  fill(255);
  textAlign(LEFT, TOP);
  textSize(34);
  text("Wizard Typing Battle", 40, 25);

  textSize(20);
  fill(220);
  text("Finish the sentence before time runs out.", 42, 70);

  drawHealthBar(40, 150, 320, 26, playerHP, playerMaxHP, color(80, 220, 120), "Hero");
  drawHealthBar(width - 360, 150, 320, 26, enemyHP, enemyMaxHP, color(255, 120, 120), "Enemy");
  drawCharacters();


  image(attackButtons, 0, 0);

}
