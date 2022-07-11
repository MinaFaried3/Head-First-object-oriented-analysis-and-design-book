import 'guitar_spec.dart';

class Guitar {
  String? serialNumber;
  double? price;
  GuitarSpec? guitarSpec;

  Guitar({this.serialNumber, this.price, this.guitarSpec});

  String? get getSerialNumber {
    return serialNumber;
  }

  double? get getPrice {
    return price;
  }

  set setPrice(double newPrice) {
    price = newPrice;
  }

  GuitarSpec? get getGuitarSpec {
    return guitarSpec;
  }
}
