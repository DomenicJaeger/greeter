import 'dart:io';

void main() {
  //Vorname wird eingegeben
  print("Wie lautet ihr Vorname?");
  var vornameString = stdin.readLineSync();
  //Nachname wird eingegeben
  print("Wie lautet ihr Nachname?");
  var nameString = stdin.readLineSync();
  //Geschlecht wird eingegeben
  print("Sind Sie maennlich oder weiblich?");
  var geschlechtString = stdin.readLineSync();
  //Alter wird eingegeben
  print("Wie alt sind Sie?");
  int? alter;
  var alterString = stdin.readLineSync();

  print(geschlechtString.toString());
  if (alterString != null /*&& ageString is int*/) {
    alter = int.tryParse(alterString) ?? -1;
    if (alter < 1) {
      print('Bitte geben Sie ein gültiges Alter ein.');
    }
    var gender = geschlechtString!.toLowerCase();
    if (alter < 30 && alter > 0) {
      print("Hallo $vornameString!");
    } else if (gender == "maennlich" || gender == "mann") {
      (print("Hallo Herr $nameString!"));
    } else if (gender == "weiblich" || gender == "frau") {
      print("Hallo Frau $nameString!");
    } else {
      print("Bitte geben Sie einen gültigen Wert ein.");
    }
  }
}
