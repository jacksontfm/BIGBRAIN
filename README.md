# BIGBRAIN

Do you have a big enough brain to outsmart your opponent?

BIGBRAIN is a code-breaking game where you have only five turns to deduce the solution. If you've ever played Mastermind (or even Wordle), then you will feel right at home playing BIGBRAIN.

In each turn, you will enter a sequence of four colored pegs. Upon submitting your guess, you will receive up to four hint pegs. A red hint peg means that one of your pieces is the correct color and is in the correct location. A white hint peg means that one of your pieces is the correct color, but isn't in the correct spot. With four colors, 256 different possible solutions, and only five turns, BIGBRAIN is truly a challenge!

# SETUP

As BIGBRAIN is not deployed, you will need a Mac in order to run this app. Currently, BIGBRAIN can only be played by opening this repository in Xcode. From there, you can play the game in Xcode's preview by opening the ContentView view (BIGBRAIN > Views > ContentView). You can also run BIGBRAIN in the Simulator, or install it onto your iPhone through Xcode. To install the app on your iPhone, you will first need to turn on Developer Mode on your iPhone, then set your iPhone as a Run Destination in Xcode. After you've done this, BIGBRAIN will deploy to your iPhone upon starting the active scheme in Xcode.

# FUTURE PLANS

Five turns really isn't very many. It would be relatively simple to add additional rows and introduce a scrolling view for rows that are pushed out of frame.

Animations are very simple to add in Xcode and they do make quite a difference.

A lot of the code in the Views is redundant. For example, BIGBRAIN currently has five different RowView views that are all nigh-identical, mainly because I couldn't figure out a way to use variables to call other variables in Swift. So instead of having just one RowView that updates for each turn, I have one for turn 1, one for turn 2, and so on. This can very likely be remedied, and would make implementing additional rows (for additional turns) far easier. There are similar redundancies present in the Game model that can likely be remedied in a similar way.

There are six colors implemented, but the game is configured to only support four. Adding the other two colors would make the game much closer to Mastermind. The InputRowView component would need to be refactored in order to accomodate buttons for the two additional colors.

Currently, the message at the top of the game only changes one time (from the game instructions at the start, to "Not quite..." for subsequent turns). I wanted this message to update randomly every turn but was not able to do so. There are a few placeholder messages for this feature already written in the Message model.
