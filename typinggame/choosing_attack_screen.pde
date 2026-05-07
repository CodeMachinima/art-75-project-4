boolean isCharging = false; //<>//
void choosingAttackScreen() {
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

  //float x = 110;
  //float y = 515;
  //float w = 1061;
  //float h = 79;

  //// boxes to choose attacks

  //fill(200);
  //rect(x, y, w, h);
  //rect(x, y + 79, w, h);
  //rect(x, y + 158 , w, h);


  //// text for attack boxes

  //textSize(20);
  //fill(0);
  //text("Small attack", x + 100, y + 30);
  //text("Medium attack", x + 100, y + 100);
  //text("Large attack", x + 100, y + 160);

  // NOTE: THESE ARE REALLY UGLY AND NOT CONFIGURED. WILL FIX.
}
