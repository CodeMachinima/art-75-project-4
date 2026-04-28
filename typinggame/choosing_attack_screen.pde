void choosingAttackScreen(){
  drawBackground();
  //drawHeader();
  drawCharacters();
  
  float x = 120;
  float y = 450;
  float w = width - 240;
  float h = 50;

  // boxes to choose attacks
  
  fill(200);
  rect(x, y, w, h, 20);     
  rect(x, y + 60, w, h, 20);
  rect(x, y + 120, w, h, 20);
  
  
  // text for attack boxes
  
  textSize(20);
  fill(0);
  text("Small attack", x + 100, y + 30);
  text("Medium attack", x + 100, y + 100);
  text("Large attack", x + 100, y + 160);
  
 // NOTE: THESE ARE REALLY UGLY AND NOT CONFIGURED. WILL FIX.
  
  
  
}
