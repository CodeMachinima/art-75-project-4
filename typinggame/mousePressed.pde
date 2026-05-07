
void mousePressed() {
  if (gameScreen == 0) {
    gameScreen = 1;
    return;
  }

  if (gameScreen == 1) {


    if (mouseX>110 && mouseX<1061 && mouseY>515 && mouseY<594) {
      attackSize = 1;
      nextSentence(1);
      gameScreen = 2;
      isCharging = true;
      myTime = millis();
    }

    if (mouseX>110 && mouseX<1061 && mouseY>515+79 && mouseY<594+79) {
      attackSize = 2;
      nextSentence(2);
      gameScreen = 2;
      isCharging = true;
      myTime = millis();
    }

    if (mouseX>110 && mouseX<1061 && mouseY>515+158 && mouseY<594+158) {
      attackSize = 3;
      nextSentence(3);
      gameScreen = 2;
      isCharging = true;
      myTime = millis();
    }
  }
}
