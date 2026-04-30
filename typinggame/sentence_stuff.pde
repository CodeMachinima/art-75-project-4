void nextSentence(int attackSize) { //<>// //<>//
  if (attackSize == 1) {
    currentSentence = smallSentencePool.get((int)random(smallSentencePool.size()));
  }

  if (attackSize == 2) {
    currentSentence = mediumSentencePool.get((int)random(mediumSentencePool.size()));
  }

  if (attackSize == 3) {
    currentSentence = largeSentencePool.get((int)random(largeSentencePool.size()));
  }

  typedText = "";

  int extraFrames = max(0, currentSentence.length() - 30) * 2;
  roundTimeMax = constrain(10 * 60 + extraFrames, 8 * 60, 16 * 60);
  roundTime = roundTimeMax;
}



void initializeSentences() {

  largeSentencePool.add("In the middle of difficulty lies opportunity waiting to be discovered by those who persist.");
  largeSentencePool.add("Success is not final failure is not fatal it is the courage to continue that truly counts.");
  largeSentencePool.add("Dreams do not work unless you take consistent action and remain focused on your true goals.");
  largeSentencePool.add("Great things never come from comfort zones but from pushing limits and embracing uncertainty.");
  largeSentencePool.add("Patience and persistence often turn what once seemed impossible into something achievable.");
  largeSentencePool.add("Every setback carries the lesson needed to come back stronger wiser and more determined.");
  largeSentencePool.add("Discipline is choosing what you want most instead of what feels easiest in the moment.");
  largeSentencePool.add("The future depends on what you do today and how committed you stay to your vision.");
  largeSentencePool.add("Small daily improvements over time lead to stunning results that once felt unreachable.");
  largeSentencePool.add("Courage is not the absence of fear but the decision to move forward despite it anyway.");
  largeSentencePool.add("Consistency builds habits and habits build the foundation for long lasting success.");
  largeSentencePool.add("Your potential is endless when you believe in yourself and commit to growth every day.");
  largeSentencePool.add("Hard work beats talent when talent fails to put in the effort required to succeed.");
  largeSentencePool.add("The path to success is rarely straight but perseverance helps navigate every twist.");
  largeSentencePool.add("Focus on progress not perfection and you will achieve far more than you imagined.");
  largeSentencePool.add("Challenges are what make life interesting and overcoming them makes life meaningful.");
  largeSentencePool.add("Opportunities multiply when you take initiative and act with confidence and purpose.");
  largeSentencePool.add("Success comes to those who stay determined and refuse to give up when it gets hard.");


  mediumSentencePool.add("The journey of a thousand miles begins with one step taken in faith.");
  mediumSentencePool.add("Success usually comes to those who are too busy to be looking for it.");
  mediumSentencePool.add("Do what you can with what you have where you are right now.");
  mediumSentencePool.add("Opportunities don't happen you create them through effort and focus.");
  mediumSentencePool.add("It always seems impossible until it is finally done with persistence.");
  mediumSentencePool.add("Believe you can and you are already halfway toward your goal.");
  mediumSentencePool.add("Act as if what you do makes a difference because it truly does.");
  mediumSentencePool.add("Happiness depends upon ourselves and the mindset we choose daily.");
  mediumSentencePool.add("What lies behind us and before us are small compared to what lies within.");
  mediumSentencePool.add("Start where you are use what you have and do what you can today.");
  mediumSentencePool.add("Difficult roads often lead to beautiful destinations worth reaching.");
  mediumSentencePool.add("Turn your wounds into wisdom and grow stronger from every experience.");
  mediumSentencePool.add("The secret of getting ahead is simply getting started without delay.");
  mediumSentencePool.add("Well done is better than well said when action truly matters most.");
  mediumSentencePool.add("Keep your face always toward the sunshine and shadows fall behind.");
  mediumSentencePool.add("Limit your always and your nevers to create space for possibility.");
  mediumSentencePool.add("Try to be a rainbow in someone else's cloud during darker times.");
  mediumSentencePool.add("If you want to lift yourself up lift up someone else along the way.");



  smallSentencePool.add("Knowledge is power.");
  smallSentencePool.add("Time is money.");
  smallSentencePool.add("Fortune favors the bold.");
  smallSentencePool.add("Practice makes perfect.");
  smallSentencePool.add("Less is more.");
  smallSentencePool.add("Truth stands the test.");
  smallSentencePool.add("Hope fuels the soul.");
  smallSentencePool.add("Still waters run deep.");
  smallSentencePool.add("Actions define character.");
  smallSentencePool.add("Wisdom begins in wonder.");
  smallSentencePool.add("Courage conquers fear.");
  smallSentencePool.add("Patience brings reward.");
  smallSentencePool.add("Dreams demand effort.");
  smallSentencePool.add("Kindness costs nothing.");
  smallSentencePool.add("Focus shapes success.");
  smallSentencePool.add("Effort builds strength.");
  smallSentencePool.add("Silence speaks volumes.");
  smallSentencePool.add("You reap what you sow.");
}
