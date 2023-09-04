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

  if (alterString != null /*&& ageString is int*/) {
    alter = int.tryParse(alterString) ?? -1;
    var gender = geschlechtString!.toLowerCase();
    var quatsch = int.tryParse(gender);
    if (alter < 1) return print('Bitte geben Sie ein gültiges Alter ein.');
    if (alter < 30 && alter > 0) return print("Hallo $vornameString!");
    if (quatsch is int) {
      return print("Bitte geben Sie ein gültiges Geschlecht ein.");
    }
    if (gender == "maennlich" || gender == "mann") {
      (print("Hallo Herr $nameString!"));
    } else if (gender == "weiblich" || gender == "frau") {
      print("Hallo Frau $nameString!");
    }
    print("Hallo Person $vornameString $nameString.");
  }
}
