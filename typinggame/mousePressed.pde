
void mousePressed() {
  if (gameScreen == 0) {
    gameScreen = 1;
    return;
  }

  if (gameScreen == 1) {


    if (mouseX>120 && mouseX<width-240+120 && mouseY>500 && mouseY<550) {
      attackSize = 1;
      nextSentence(1);
      gameScreen = 2;
    }

    if (mouseX>120 && mouseX<width-240+120 && mouseY>500+60 && mouseY<550+60) {
      attackSize = 2;
      nextSentence(2);
      gameScreen = 2;
    }

    if (mouseX>120 && mouseX<width-240+120 && mouseY>500+120 && mouseY<550+120) {
      attackSize = 3;
      nextSentence(3);
      gameScreen = 2;
    }
  }
}
