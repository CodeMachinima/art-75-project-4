
void choosingAttackScreen(){
  drawBackground();
  drawHeader();
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


public void mousePressed(){
  if (gameScreen == 0){
    gameScreen = 1;
  }
  
  if (gameScreen == 1){
    //if (mouseX < 600 && mouseX > 120 && mouseY < 570 && mouseY > 450){
    //  gameScreen = 2;
    //}
    
    
    
    if (mouseX>120 && mouseX<width-240+120 && mouseY>450 && mouseY<500){
      gameScreen = 0;
    }
    
    if (mouseX>120 && mouseX<width-240+120 && mouseY>450+60 && mouseY<500+60){
      gameScreen = 0;
    }
    
    if (mouseX>120 && mouseX<width-240+120 && mouseY>450+120 && mouseY<500+120){
      gameScreen = 0;
    }
  }
}
  
  
