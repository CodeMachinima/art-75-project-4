// Processing Typing Battle Game
// Paste into a single .pde file and run in Processing.
// Type the full sentence before the timer runs out.
// If time expires, the hero takes damage.
// Complete enough sentences to win before health reaches zero.

ArrayList<String> sentencePool = new ArrayList<String>();
String currentSentence = "";
String typedText = "";

int roundTimeMax = 12 * 60; // 12 seconds at 60 FPS <-- depending on how fast ur computer is, THE TIME WILL BE FASTER OR SLOWER
int roundTime = roundTimeMax;

int playerHP = 5;
int playerMaxHP = 5;
int enemyHP = 1;
int enemyMaxHP = 8;

int screenShakeFrames = 0;
int flashFrames = 0;
int successFrames = 0;

boolean gameOver = false;
boolean win = false;
PFont font;

PImage heroImage;
PImage heroDamage;
PImage enemyImage;
PImage enemyDamage;

int gameScreen = 0; // the variable we use to change from intro screen to fight screen, etc

void setup() {
  size(1280, 800);
  smooth(4);
  frameRate(60);
  font = createFont("Arial", 28);
  textFont(font);
  initializeSentences();
  nextSentence();
  heroImage = loadImage("sprite1.png");
  heroDamage = loadImage("sprite2.png");
  enemyImage = loadImage("sprite3.png");
  enemyDamage = loadImage("sprite4.png");
}

void draw() {

  if (gameScreen == 0){
    introScreen();
  }
  else if (gameScreen == 1){
    choosingAttackScreen();
  }
  else if (gameScreen == 2){
    fightScreen();
  }
}


// -----------------------------------------
// ------FIGHT SCREEN (GAME SCREEN 2)-------
// -----------------------------------------


void fightScreen() {
  updateTimers();
  float shakeX = 0;
  float shakeY = 0;
  if (screenShakeFrames > 0) {
    shakeX = random(-8, 8);
    shakeY = random(-8, 8);
  }

  pushMatrix();
  translate(shakeX, shakeY);

  drawBackground();
  drawHeader();
  drawCharacters();
  drawSentenceBox();
  drawInputBox();
  drawInstructions();

  if (flashFrames > 0) {
    noStroke();
    fill(255, 70, 70, 80);
    rect(0, 0, width, height);
  }

  if (successFrames > 0) {
    noStroke();
    fill(100, 255, 140, 60);
    rect(0, 0, width, height);
  }

  if (gameOver || win) {
    drawEndOverlay();
  }

  popMatrix();
}




// -------------------------
// --------VISUALS----------
// -------------------------



// -------BACKGROUND--------

void drawBackground() {
  for (int y = 0; y < height; y++) {
    float amt = map(y, 0, height, 0, 1);
    stroke(lerpColor(color(18, 24, 45), color(65, 30, 70), amt));
    line(0, y, width, y);
  }

  noStroke();
  fill(255, 255, 255, 18);
  for (int i = 0; i < 60; i++) {
    ellipse((i * 193) % width, (i * 97) % height, 2, 2);
  }

  fill(30, 20, 35, 180);
  rect(0, height - 130, width, 130);
}

// -------HEADER (TIMER, HEALTH BARS, TOP TEXT)--------

void drawHeader() {
  fill(255);
  textAlign(LEFT, TOP);
  textSize(34);
  text("Typing Battle", 40, 25);

  textSize(20);
  fill(220);
  text("Finish the sentence before time runs out.", 42, 70);

  drawHealthBar(40, 150, 320, 26, playerHP, playerMaxHP, color(80, 220, 120), "Hero");
  drawHealthBar(width - 360, 150, 320, 26, enemyHP, enemyMaxHP, color(255, 120, 120), "Enemy");

  drawTimer(width/2 - 140, 30, 280, 54);
}

// -------HEALTH BARS--------

void drawHealthBar(float x, float y, float w, float h, int value, int maxValue, int c, String label) {
  fill(255);
  textSize(18);
  textAlign(LEFT, BOTTOM);
  text(label, x, y - 8);

  fill(40, 40, 55, 230);
  rect(x, y, w, h, 10);

  float ratio = constrain((float)value / maxValue, 0, 1);
  fill(c);
  rect(x, y, w * ratio, h, 10);

  noFill();
  stroke(255, 160);
  rect(x, y, w, h, 10);
  noStroke();
}

// -------DRAW BOTH CHARACTERS--------

void drawCharacters() {
  drawHero(160, 270);
  drawEnemy(width - 260, 270);
}

// -------SENTENCE PROMPT BOX--------

void drawSentenceBox() {
  float x = 120;
  float y = 430;
  float w = width - 240;
  float h = 105;

  fill(18, 18, 30, 210);
  rect(x, y, w, h, 24);
  stroke(255, 80);
  noFill();
  rect(x, y, w, h, 24);
  noStroke();

  fill(180, 210, 255);
  textAlign(LEFT, TOP);
  textSize(22);
  text("Sentence", x + 24, y + 16);

  drawColoredSentence(currentSentence, typedText, x + 24, y + 50, w - 48, 34);
}

// -------SENTENCE COLORS--------

void drawColoredSentence(String sentence, String typed, float startX, float startY, float maxWidth, float lineHeight) {
  textSize(28);
  textAlign(LEFT, TOP);

  float x = startX;
  float y = startY;

  for (int i = 0; i < sentence.length(); i++) {
    char c = sentence.charAt(i);
    String s = str(c);
    float cw = textWidth(s);

    if (x + cw > startX + maxWidth && c != ' ') {
      x = startX;
      y += lineHeight;
    }

    if (i < typed.length()) {
      if (typed.charAt(i) == c) {
        fill(110, 255, 150);
      } else {
        fill(255, 110, 110);
      }
    } else {
      fill(255);
    }

    text(s, x, y);
    x += cw;

    if (c == ' ') {
      if (x > startX + maxWidth) {
        x = startX;
        y += lineHeight;
      }
    }
  }
}

// -------INPUT BOX--------

void drawInputBox() {
  float x = 120;
  float y = 555;
  float w = width - 240;
  float h = 75;

  fill(10, 12, 22, 220);
  rect(x, y, w, h, 20);

  boolean exactPrefix = currentSentence.startsWith(typedText);
  if (typedText.length() == 0 || exactPrefix) {
    stroke(90, 220, 140);
  } else {
    stroke(255, 90, 90);
  }
  noFill();
  rect(x, y, w, h, 20);
  noStroke();

  fill(220);
  textSize(20);
  text("Type here", x + 20, y + 8);

  textSize(28);
  fill(255);
  String shown = typedText;
  if (frameCount % 60 < 30 && !gameOver && !win) shown += "_";
  text(shown, x + 20, y + 38, w - 40, h - 15);
}

// -------BOTTOM INSTRUCTIONS--------

void drawInstructions() {
  fill(220);
  textAlign(CENTER, CENTER);
  textSize(18);
  text("Press BACKSPACE to correct mistakes. Press ENTER to restart after win or loss.", width/2, 665);
}


// --------END GAME OVERLAY----------

void drawEndOverlay() {
  fill(0, 180);
  rect(0, 0, width, height);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(54);
  if (win) {
    text("YOU WIN!", width/2, height/2 - 40);
    textSize(24);
    text("Your typing defeated the enemy.", width/2, height/2 + 10);
  } else {
    text("GAME OVER", width/2, height/2 - 40);
    textSize(24);
    text("The hero was damaged too many times.", width/2, height/2 + 10);
  }

  textSize(22);
  text("Press ENTER to play again", width/2, height/2 + 70);
}




// ------------------------------
// --------HELPER STUFF----------
// ------------------------------


void keyPressed() {
  if (key == ENTER || key == RETURN) {
    if (gameOver || win) {
      restartGame();
      gameScreen = 0;
    }
    return;
  }

  if (gameOver || win) return;

  if (key == BACKSPACE) {
    if (typedText.length() > 0) {
      typedText = typedText.substring(0, typedText.length() - 1);
    }
    return;
  }

  if (key == TAB || key == CODED) return;

  if (key >= 32 && key != DELETE) {
    typedText += key;
    checkTypedSentence();
  }
}

void restartGame() {
  playerHP = playerMaxHP;
  enemyHP = enemyMaxHP;
  typedText = "";
  gameOver = false;
  win = false;
  flashFrames = 0;
  successFrames = 0;
  screenShakeFrames = 0;
  nextSentence();
}
