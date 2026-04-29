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
 
  largeSentencePool.add("We are what we repeatedly do, so excellence is not an act but a habit.");
  largeSentencePool.add("In the middle of difficulty lies opportunity waiting to be discovered by those who persist.");
  largeSentencePool.add("It is during our darkest moments that we must focus to see the light ahead.");
  largeSentencePool.add("Life is really simple, but we insist on making it far more complicated than needed.");
  largeSentencePool.add("The future depends on what you do today, not on what you plan for tomorrow.");
  largeSentencePool.add("Success usually comes to those who are too busy to be constantly looking for it.");
  largeSentencePool.add("You must be the change you wish to see in the world around you every day.");
  largeSentencePool.add("Do not go where the path may lead, go instead where there is no path.");
  largeSentencePool.add("Happiness is not something ready made, it comes from your own actions.");
  largeSentencePool.add("The only limit to our realization of tomorrow will be our doubts of today.");
  largeSentencePool.add("Do what you feel in your heart to be right, for you will be criticized anyway.");
  largeSentencePool.add("It is never too late to be what you might have been in your life.");
  largeSentencePool.add("Success is not final, failure is not fatal, it is the courage to continue that counts.");
  largeSentencePool.add("We do not remember days, we remember moments that stay with us over time.");
  largeSentencePool.add("The best way to predict your future is to create it through your actions.");
  largeSentencePool.add("If you tell the truth, you do not have to remember anything at all.");
  largeSentencePool.add("A person who never made a mistake never tried anything truly new.");
  largeSentencePool.add("Difficulties in life are intended to make us better, not bitter or defeated.");


  mediumSentencePool.add("The only thing we have to fear is fear itself.");
  mediumSentencePool.add("That which does not kill us makes us stronger.");
  mediumSentencePool.add("To be yourself in a world that tries to change you.");
  mediumSentencePool.add("The journey of a thousand miles begins with one step.");
  mediumSentencePool.add("Keep your face always toward the sunshine.");
  mediumSentencePool.add("Turn your wounds into wisdom as you grow.");
  mediumSentencePool.add("What we think, we become over time.");
  mediumSentencePool.add("Well begun is half done in any task.");
  mediumSentencePool.add("Dream big and dare to fail in life.");
  mediumSentencePool.add("Act as if what you do makes a difference.");
  mediumSentencePool.add("Believe you can and you are halfway there.");
  mediumSentencePool.add("Everything you can imagine is real.");
  mediumSentencePool.add("Do what you can with what you have.");
  mediumSentencePool.add("Strive not to be a success but of value.");
  mediumSentencePool.add("Stay hungry stay foolish in your pursuits.");
  mediumSentencePool.add("The purpose of our lives is to be happy.");
  mediumSentencePool.add("Life is what happens when you are busy.");
  mediumSentencePool.add("Try to be a rainbow in someone's cloud.");



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
