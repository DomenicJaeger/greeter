import 'dart:io';

void main() {
  print("Wie lautet ihr Vorname?");
  var surnameString = stdin.readLineSync();
  print("Wie lautet ihr Nachname?");
  var nameString = stdin.readLineSync();
  print("Sind Sie maennlich oder weiblich?");
  var genderString = stdin.readLineSync();
  print("Wie alt sind Sie?");
  int ageInt;
  var ageString = stdin.readLineSync();
  if (ageString != null /*&& ageString is int*/) {
    ageInt = int.parse(ageString);
    if (ageInt < 30) {
      print("Hallo $surnameString!");
    } else if (genderString == "Mann" ||
        genderString == "maennlich" ||
        genderString == "mann") {
      (print("Hallo Herr $nameString!"));
    } else if (genderString == "Frau" ||
        genderString == "weiblich" ||
        genderString == "frau") {
      print("Hallo Frau $nameString!");
    } else {
      print("Bitte geben Sie einen gültigen Wert ein.");
    }
  }
}
