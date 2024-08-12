final invalidBinary = RegExp("[^0-1]");
final base8Switches = [4, 2, 1];
final base16Switches = [8, 4, 2, 1];

base2ToBase8(String given) {
  if (!validBase2Binary(given)) {
    return;
  }

  List<String> sortedData = sliceBase2Binary(given, 3);
}

List<String> sliceBase2Binary(String given, int interval) {
  List<String> sortedBinary = [];

  for (int i = given.length; i > 0; i -= interval) {
    int start = i - interval;
    if (start < 0) {
      sortedBinary.add(given.substring(0, i));
      break;
    }
    sortedBinary.add(given.substring(start, i));
  }

  return sortedBinary.reversed.toList();
}

base2ToBase10(String given) {
  print("base 2 to base 10 conversion");
}

base2ToBase16(String given) {
  print("base 2 to base 16 conversion");
}

base8ToBase2(String given) {
  print("base 8 to base 2 conversion");
}

base8ToBase10(String given) {
  print("base 8 to base 10 conversion");
}

base8ToBase16(String given) {
  print("base 8 to base 16 conversion");
}

base10ToBase2(String given) {
  print("base 10 to base 2 conversion");
}

base10ToBase8(String given) {
  print("base 10 to base 8 conversion");
}

base10ToBase16(String given) {
  print("base 10 to base 16 conversion");
}

base16ToBase2(String given) {
  print("base 16 to base 2 conversion");
}

base16ToBase8(String given) {
  print("base 16 to base 8 conversion");
}

base16ToBase10(String given) {
  print("base 16 to base 10 conversion");
}

bool validBase2Binary(String given) {
  if (invalidBinary.hasMatch(given)) {
    print("Sorry but the given value '$given' is an invalid base 2 binary");
    return false;
  }
  return true;
}
