import 'enums.dart';
import 'guitar.dart';
import 'guitar_spec.dart';

class Inventory {
  late List<Guitar> guitars;

  Inventory() {
    guitars = <Guitar>[];
  }

  void addGuitar(
      {String? serialNumber,
      double? price,
      Builder? builder,
      String? model,
      Type? type,
      Wood? backWood,
      Wood? topWood,
      int? numString}) {
    Guitar guitar = Guitar(
        serialNumber: serialNumber,
        price: price,
        guitarSpec: GuitarSpec(
            builder: builder,
            model: model,
            type: type,
            backWood: backWood,
            topWood: topWood,
            numStrings: numString));

    guitars.add(guitar);
  }

  Guitar? getGuitar({required String serialNumber}) {
    for (var guitar in guitars) {
      if (guitar.getSerialNumber == serialNumber) {
        return guitar;
      }
    }
    return null;
  }

  List<Guitar?> search(GuitarSpec searchSPec) {
    List<Guitar?> matchingGuitars = [];

    for (var guitar in guitars) {
      //modify here
      if (guitar.guitarSpec!.matches(searchSPec)) {
        matchingGuitars.add(guitar);
      }
    }

    return matchingGuitars;
  }
}
