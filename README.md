
# Hangman Game - Dart

This is a simple console-based Hangman game implemented in Dart. The player must guess a word by guessing one letter at a time. If the player makes too many incorrect guesses, they lose the game and a hangman stick figure is drawn progressively.



### Features

- Allows the player to guess letters one at a time.
- Keeps track of the letters guessed and displays feedback.
- Displays an ASCII art representation of a hangman that progresses with each incorrect guess.
- Provides input validation for single letter entries.
- Displays the current word progress and the number of incorrect guesses remaining.

## How to play
- The word to guess is "hangman".
- The player will be prompted to guess a letter.
- If the guessed letter is correct, it will be revealed in the word.
- If the guessed letter is incorrect, the hangman figure will be - - progressively drawn and the number of remaining guesses will decrease.
- The player wins if they guess all the letters in the word before they run out of guesses.
- The player loses if they run out of guesses, and the word is revealed.

## Files
main.dart
- The primary file containing the Dart code for the Hangman game.

## Code Structure
### Variables:
- word: A String containing the word to be guessed. The word is hardcoded as "hangman".

- guessedLetters: A List<String> that stores the letters guessed by the player. This is used to track which letters have been guessed already and reveal them in the word.

- remainingGuesses: An int that starts at 6 and decreases each time the player guesses incorrectly. When it reaches 0, the game is over.

- hangmanAscii: A List<String> containing the ASCII art of a hangman figure, which is progressively displayed as the player makes incorrect guesses.

### Functions:
displayHangman(int incorrectGuesses)
- Parameters: 
incorrectGuesses: The number of incorrect guesses made so far.
- Description: Displays the hangman figure based on how many incorrect guesses the player has made. It prints the first few lines of the ASCII art according to the current guess count.

## Main Game Loop
1. Display Word Progress:

- A String is generated and printed, showing the current progress of the word. Correctly guessed letters are revealed, while unguessed letters are displayed as underscores (_).
2. Player Input:

- The player is prompted to enter a single letter.
- Input is validated to ensure that it is a single letter between 'a' and 'z'. If the input is invalid, the player is prompted again.
3. Guess Checking:

- If the guessed letter is correct, it is revealed in the word.
- If the guessed letter is incorrect, the number of remaining guesses decreases, and the hangman figure is drawn progressively.
4. Win/Loss Conditions:

- The player wins if they guess all the letters in the word.
- The player loses if they run out of guesses before guessing the full word. The game reveals the correct word if the player loses.

## Example run
_ _ _ _ _ _ _ 
Enter a letter: h  
Correct!  
h _ _ _ _ _ _   
Enter a letter: a  
Correct!  
h a _ _ _ a _   
Enter a letter: z  
Incorrect!  
  \_________     
|/        | 
 |         O    

Remaining guesses: 5  
h a _ _ _ a _   
Enter a letter: n  
Correct!  
h a n _ _ a n   
Enter a letter: g  
Correct!  
h a n g _ a n   
Enter a letter: m  
Correct!  
You win! The word was hangman.  

## Edge Cases
- Invalid Input: If the player inputs anything other than a single lowercase letter (e.g., multiple letters or a number), the game will prompt the player again without affecting the guesses.

- Repeated Guesses: If the player guesses a letter they've already guessed, they will be informed, and the game will not penalize them by reducing the remaining guesses.

## Future Improvements
- Dynamic Word Selection: Allow the game to randomly choose words from a list instead of using a hardcoded word.
- Difficulty Levels: Adjust the number of allowed incorrect guesses or the length of the word based on difficulty settings.
- Multiplayer Mode: Add a mode where two players can take turns guessing the word or where one player sets the word for another to guess.

## Conclusion
This simple Hangman game in Dart is a fun demonstration of basic game logic using control structures, string manipulation, and list handling. It's a good starting point for building more advanced games or learning Dart's core features.








