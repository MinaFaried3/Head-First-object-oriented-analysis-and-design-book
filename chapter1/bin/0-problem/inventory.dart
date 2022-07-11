import 'guitar.dart';

class Inventory {
  late List<Guitar> guitars;

  Inventory() {
    guitars = <Guitar>[];
  }

  void addGuitar({
    required String serialNumber,
    required double price,
    required String builder,
    required String model,
    required String type,
    required String backWood,
    required String topWood,
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

  Guitar? search(Guitar searchGuitar) {
    for (var guitar in guitars) {
      String? builder = searchGuitar.getBuilder;
      if ((builder != null) &&
          (builder != "") &&
          (builder != guitar.getBuilder)) {
        continue;
      }

      String? model = searchGuitar.getModel;

      if ((model != null) && (model != "") && (model != guitar.getModel)) {
        continue;
      }

      String? type = searchGuitar.getType;
      if ((type != null) && (type != "") && (type != guitar.getType)) {
        continue;
      }

      String? backWood = searchGuitar.getBackWood;

      if ((backWood != null) &&
          (backWood != "") &&
          (backWood != guitar.getBackWood)) {
        continue;
      }
      String? topWood = searchGuitar.getTopWood;

      if ((topWood != null) &&
          (topWood != "") &&
          (topWood != guitar.getTopWood)) {
        continue;
      }

      return guitar;
    }

    return null;
  }
}
