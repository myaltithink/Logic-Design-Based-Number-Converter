final invalidBinary = RegExp("[^0-1]");
final base8Switches = [4, 2, 1];
final base16Switches = [8, 4, 2, 1];

base2ToBase8(String given) {
  if (!validBase2Binary(given)) {
    return;
  }

  List<String> slicedData = sliceBase2Binary(given, 3);
  String computedValue = "";
  
  for (String item in slicedData) {
    int value = 0;
    for (int i = item.length-1; i >= 0; i--) {
      if(item[i] == '1') value += base8Switches[i];
    }
    computedValue += value.toString();
  }

  print("Base 2 -> Base 8: $given ---> $computedValue");

}

List<String> sliceBase2Binary(String given, int interval) {
  List<String> sortedBinary = [];

  for (int i = given.length; i > 0; i -= interval) {
    int start = i - interval;
    if (start < 0) {
      String lastValue = given.substring(0, i);
      String finalValue = '';
      for (var i = 0; i < 3-lastValue.length; i++) {
        finalValue += "0";
      }
      finalValue += lastValue;

      sortedBinary.add(finalValue);
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
