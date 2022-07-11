import 'enums.dart';

class GuitarSpec {
  String? model;
  Type? type;
  Builder? builder;
  Wood? backWood, topWood;

  GuitarSpec({
    this.builder,
    this.model,
    this.type,
    this.backWood,
    this.topWood,
  });

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
}
