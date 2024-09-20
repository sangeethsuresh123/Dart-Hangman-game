import 'dart:io';

// word to be guessed
void main() {
  String word = "hangman";

// list of letters guessed by the player
  List<String> guessedLetters = [];

// number of guesses remaining before the game is over
  int remainingGuesses = 6;

// list of ASCII art for the stick figure hangman
  List<String> hangmanAscii = [
    "  _________   ",
    " |/        |  ",
    " |         O  ",
    " |        /|\\ ",
    " |        / \\ ",
    " |             ",
    "_|___          ",
  ];

// Function to display the hangman
  void displayHangman(int incorrectGuesses) {
    for (int i = 0; i <= incorrectGuesses; i++) {
      print(hangmanAscii[i]);
    }
  }

// main game loop
  while (true) {
    // print the word with blanks for unguessed letters
    String displayedWord = "";
    for (int i = 0; i < word.length; i++) {
      if (guessedLetters.contains(word[i])) {
        displayedWord += word[i] + " ";
      } else {
        displayedWord += "_ ";
      }
    }
    print(displayedWord);

    // prompt the player to enter a letter
    stdout.write("Enter a letter: ");
    String? input = stdin.readLineSync()?.toLowerCase();

    // Input validation
    if (input == null ||
        input.length != 1 ||
        !RegExp(r'^[a-z]$').hasMatch(input)) {
      print("Invalid input. Please enter a single letter.");
      continue;
    }

    String letter = input;

    // check if the letter has already been guessed
    if (guessedLetters.contains(letter)) {
      print("You already guessed that letter!");
      continue;
    }

    // add the letter to the list of guessed letters
    guessedLetters.add(letter);

    // check if the letter is in the word
    if (word.contains(letter)) {
      print("Correct!");
    } else {
      print("Incorrect!");
      remainingGuesses--;
      displayHangman(6 - remainingGuesses); // Display updated hangman

      // Display remaining guesses
      print("Remaining guesses: $remainingGuesses");

      if (remainingGuesses == 0) {
        print("You lose! The word was $word.");
        break;
      }
    }

    // check if the player has guessed all the letters in the word
    bool wordIsGuessed = true;
    for (int i = 0; i < word.length; i++) {
      if (!guessedLetters.contains(word[i])) {
        wordIsGuessed = false;
        break;
      }
    }

    if (wordIsGuessed) {
      print("You win! The word was $word.");
      break;
    }

  }
}
