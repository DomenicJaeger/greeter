import 'dart:io';

void main() {
  //Vorname wird eingegeben
  print("Wie lautet ihr Vorname?");
  var vornameString = stdin.readLineSync();
  //Solange ein leeres Eingabefeld abgeschickt wird, wird der Vorgang wiederholt
  while (vornameString == null || vornameString.isEmpty) {
    print("Bitte Vornamen eingeben");
    vornameString = stdin.readLineSync();
  }
  //Nachname wird eingegeben
  print("Wie lautet ihr Nachname?");
  var nameString = stdin.readLineSync();
  //Solange ein leeres Eingabefeld abgeschickt wird, wird der Vorgang wiederholt
  while (nameString == null || nameString.isEmpty) {
    print("Bitte Nachnamen eingeben");
    nameString = stdin.readLineSync();
  }
  //Geschlecht wird eingegeben
  print("Sind Sie maennlich oder weiblich?");
  var geschlechtString = stdin.readLineSync();
  //Solange ein leeres Eingabefeld abgeschickt wird, oder eine Zahl eingegeben wird, wird der Vorgang wiederholt
  while (geschlechtString == null ||
      geschlechtString.isEmpty ||
      int.tryParse(geschlechtString) is int) {
    print("Bitte Geschlecht eingeben");
    geschlechtString = stdin.readLineSync();
  }
  //Alter wird eingegeben
  print("Wie alt sind Sie?");
  int? alter;
  var alterString = stdin.readLineSync();
  //Solange ein leeres Eingabefeld abgeschickt wird, oder die Eingabe keine Zahl ist, wird der Vorgang wiederholt
  while (alterString == null ||
      alterString.isEmpty ||
      int.tryParse(alterString) == null) {
    print(" Bitte Alter eingeben");
    alterString = stdin.readLineSync();
  }
  alter = int.tryParse(alterString);
  //Liegt das Alter über 30 wird die informelle Begrüßung mit Vornamen ausgegeben
  if (alter! < 30 && alter > 0) return print("Hallo $vornameString!");
  //.toLowerCase damit unabhängig von Groß- und Kleinschreibung das Wort richtig erkannt wird
  //Wenn männlich formelle Begrüßung mit "Herr", bei weiblich mit "Frau", bei sonstigem neutrale Anrede mit Vor- und Nachnamen
  var gender = geschlechtString.toLowerCase();
  if (gender == "maennlich" ||
      gender == "mann" ||
      gender == "junge" ||
      gender == "m") {
    (print("Hallo Herr $nameString!"));
  } else if (gender == "weiblich" ||
      gender == "frau" ||
      gender == "maedchen" ||
      gender == "w") {
    print("Hallo Frau $nameString!");
  } else {
    print("Hallo $vornameString $nameString!");
  }
}
