import 'enums.dart';

class GuitarSpec {
  String? model;
  Type? type;
  Builder? builder;
  Wood? backWood, topWood;
  int? numStrings;

  GuitarSpec(
      {this.builder,
      this.model,
      this.type,
      this.backWood,
      this.topWood,
      this.numStrings});

  Builder? get getBuilder {
    return builder;
  }

  String? get getModel {
    return model;
  }

  Type? get getType {
    return type;
  }

  Wood? get getBackWood {
    return backWood;
  }

  Wood? get getTopWood {
    return topWood;
  }

  int? get getNumStrings {
    return numStrings;
  }

  bool matches(GuitarSpec otherSpec) {
    if (builder != otherSpec.getBuilder) {
      return false;
    }

    if ((model != null) && (model != "") && (model != otherSpec.getModel)) {
      return false;
    }

    if (type != otherSpec.getType) {
      return false;
    }

    if (topWood != otherSpec.getTopWood) {
      return false;
    }
    if (backWood != otherSpec.getBackWood) {
      return false;
    }

    if (numStrings != otherSpec.numStrings) {
      return false;
    }

    return true;
  }
}
