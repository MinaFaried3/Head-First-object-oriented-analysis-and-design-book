import 'enums.dart';
import 'guitar.dart';
import 'guitar_spec.dart';

class Inventory {
  late List<Guitar> guitars;

  Inventory() {
    guitars = <Guitar>[];
  }

  void addGuitar({
    required String serialNumber,
    required double price,
    required Builder builder,
    required String model,
    required Type type,
    required Wood backWood,
    required Wood topWood,
  }) {
    Guitar guitar = Guitar(
        serialNumber: serialNumber,
        price: price,
        guitarSpec: GuitarSpec(
          builder: builder,
          model: model,
          type: type,
          backWood: backWood,
          topWood: topWood,
        ));

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
      //notice that
      GuitarSpec? guitarSpec = guitar.getGuitarSpec;
      if (searchSPec.getBuilder != guitarSpec?.getBuilder) {
        continue;
      }

      String? model = searchSPec.getModel?.toLowerCase();

      if ((model != null) &&
          (model != "") &&
          (model != guitarSpec?.getModel?.toLowerCase())) {
        continue;
      }

      if (searchSPec.getType != guitarSpec?.getType) {
        continue;
      }

      if (searchSPec.getTopWood != guitarSpec?.getTopWood) {
        continue;
      }
      if (searchSPec.getBackWood != guitarSpec?.getBackWood) {
        continue;
      }

      matchingGuitars.add(guitar);
    }

    return matchingGuitars;
  }
}
