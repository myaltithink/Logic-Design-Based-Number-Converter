import 'dart:io';
import 'package:base_number_converter/base_number_converter.dart' as libs;

void main(List<String> arguments) {
  // indication that the application is running
  bool keepRunning = true;

  // collection of conversion methods and their actual conversion method
  Map conversions = {
    "Base 2 -> Base 8": libs.base2ToBase8,
    "Base 2 -> Base 10": libs.base2ToBase10,
    "Base 2 -> Base 16": libs.base2ToBase16,
    "Base 8 -> Base 2": libs.base8ToBase2,
    "Base 8 -> Base 10": libs.base8ToBase10,
    "Base 8 -> Base 16": libs.base8ToBase16,
    "Base 10 -> Base 2": libs.base10ToBase2,
    "Base 10 -> Base 8": libs.base10ToBase8,
    "Base 10 -> Base 16": libs.base10ToBase16,
    "Base 16 -> Base 2": libs.base16ToBase2,
    "Base 16 -> Base 8": libs.base16ToBase8,
    "Base 16 -> Base 10": libs.base16ToBase10,
  };

  print("\n\n=== Logic Design Based Number Converter ===");
  print("Simply enter the [number] of the conversion method you want to use");
  print("To stop the application, simply type 'exit'");

  // start of application
  while (keepRunning) {
    // enclosed to try-catch to easily handle invalid input
    try {
      // prints all the conversion methods from the collection with their corresponding id/index
      print("\nConversion Methods");
      int index = 0;
      for (var item in conversions.entries) {
        print("[$index] ${item.key}");
        index++;
      }
      print('');
      // gets the console input
      String? input = stdin.readLineSync()!.toLowerCase();

      // checks if the user wants to exit the application
      if (input == "exit") {
        keepRunning = false;
        return;
      }

      int chosenMethod = int.parse(input);

      // triggers the invalid input (catch) if the number option is valid but not in the collection
      if (chosenMethod > conversions.length) {
        throw Error();
      }

      print(
          "\nYou have chosen ${conversions.keys.elementAt(chosenMethod)} Conversion");
      stdout.write("Please enter the data you wish to convert: ");
      String? given = stdin.readLineSync();

      // executes the assigned function of the chosen conversion method
      conversions.values.elementAt(chosenMethod)(given);
    } catch (e) {
      print("Sorry but it seems like you have entered an invalid input");
    }
  }
}
