import 'enums.dart';
import 'guitar.dart';

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
      builder: builder,
      model: model,
      type: type,
      backWood: backWood,
      topWood: topWood,
    );

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

  List<Guitar?> search(Guitar searchGuitar) {
    List<Guitar?> matchingGuitars = [];

    for (var guitar in guitars) {
      if (searchGuitar.getBuilder != guitar.getBuilder) {
        continue;
      }

      String? model = searchGuitar.getModel?.toLowerCase();

      if ((model != null) &&
          (model != "") &&
          (model != guitar.getModel?.toLowerCase())) {
        continue;
      }

      if (searchGuitar.getType != guitar.getType) {
        continue;
      }

      if (searchGuitar.getTopWood != guitar.getTopWood) {
        continue;
      }
      if (searchGuitar.getBackWood != guitar.getBackWood) {
        continue;
      }

      matchingGuitars.add(guitar);
    }

    return matchingGuitars;
  }
}
