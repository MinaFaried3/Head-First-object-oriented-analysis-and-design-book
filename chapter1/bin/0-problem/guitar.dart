class Guitar {
  String? serialNumber, builder, model, type, backWood, topWood;
  double? price;

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

  String? get getBuilder {
    return builder;
  }

  String? get getModel {
    return model;
  }

  String? get getType {
    return type;
  }

  String? get getBackWood {
    return backWood;
  }

  String? get getTopWood {
    return topWood;
  }
}
