import 'enums.dart';

class Guitar {
  String? serialNumber, model;

  double? price;

  Type? type;
  Builder? builder;
  Wood? backWood, topWood;

  Guitar({
    this.serialNumber,
    this.price,
    this.builder,
    this.model,
    this.type,
    this.backWood,
    this.topWood,
  });

  String? get getSerialNumber {
    return serialNumber;
  }

  double? get getPrice {
    return price;
  }

  set setPrice(double newPrice) {
    price = newPrice;
  }

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
