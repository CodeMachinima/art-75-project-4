void nextSentence() {
  currentSentence = sentencePool.get((int)random(sentencePool.size()));
  typedText = "";

  int extraFrames = max(0, currentSentence.length() - 30) * 2;
  roundTimeMax = constrain(10 * 60 + extraFrames, 8 * 60, 16 * 60);
  roundTime = roundTimeMax;
}



void initializeSentences() {
  sentencePool.add("The moonlight painted silver lines across the quiet lake.");
  sentencePool.add("A clever fox slipped behind the fence before sunrise.");
  sentencePool.add("Typing with calm focus is better than rushing into mistakes.");
  sentencePool.add("The old library smelled like paper, dust, and forgotten stories.");
  sentencePool.add("Rain tapped softly against the window throughout the afternoon.");
  sentencePool.add("Our team celebrated the small win because progress still matters.");
  sentencePool.add("The engineer adjusted the gears until the machine hummed smoothly.");
  sentencePool.add("A bright red balloon drifted above the crowded city street.");
  sentencePool.add("She packed a flashlight, a map, and a sandwich for the hike.");
  sentencePool.add("The astronaut watched Earth glow like a jewel in the darkness.");
  sentencePool.add("Every sentence becomes easier when your hands learn the rhythm.");
  sentencePool.add("The baker pulled warm bread from the oven just before dawn.");
  sentencePool.add("A sudden gust scattered leaves across the empty playground.");
  sentencePool.add("He promised to return the book as soon as he finished the final chapter.");
  sentencePool.add("The painter mixed blue and gold to capture the evening sky.");
  sentencePool.add("A patient gardener knows that strong roots take time to grow.");
  sentencePool.add("The train whistle echoed through the valley and faded into silence.");
  sentencePool.add("Good timing and accurate typing can turn panic into confidence.");
}
