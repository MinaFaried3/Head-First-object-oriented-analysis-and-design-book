import 'enums.dart';
import 'guitar.dart';
import 'guitar_spec.dart';
import 'inventory.dart';

/*
* customers never supply a serial number or a price
* create guitarSpec class
* improve search method
* replace guitar with GuitarSpec in main
*
* */

void main() {
  Inventory inventory = Inventory();
  initializeInventory(inventory);
  // replace guitar with GuitarSpec
  GuitarSpec whatErinLikes = GuitarSpec(
    builder: Builder.FENDER,
    model: "Stratocastor",
    type: Type.ELECTRIC,
    backWood: Wood.ALDER,
    topWood: Wood.ALDER,
  );

  // notice can't find this guitar because builder starts with capital letter
  inventory.addGuitar(
      serialNumber: "V95693",
      price: 1499.95,
      builder: Builder.FENDER,
      model: "Stratocastor",
      type: Type.ELECTRIC,
      backWood: Wood.ALDER,
      topWood: Wood.ALDER);

  // another guitar erin will like it
  inventory.addGuitar(
      serialNumber: "V9512",
      price: 1549.95,
      builder: Builder.FENDER,
      model: "Stratocastor",
      type: Type.ELECTRIC,
      backWood: Wood.ALDER,
      topWood: Wood.ALDER);

  List<Guitar?> matchingGuitars = inventory.search(whatErinLikes);

  if (matchingGuitars.isNotEmpty) {
    for (var guitar in matchingGuitars) {
      GuitarSpec? spec = guitar?.getGuitarSpec;
      print(
          "Erin, you might like this ${spec?.getBuilder?.convertToString()} ${spec?.getModel} ${spec?.getType?.convertToString()} guitar:\n  ${spec?.getBackWood?.convertToString()} back and sides,\n  ${spec?.getTopWood?.convertToString()} top.\nYou can have it for only \$ ${guitar?.getPrice} !");
      print("---------");
    }
  } else {
    print("Sorry, Erin, we have nothing for you");
  }
}

void initializeInventory(Inventory inventory) {
  // Add guitars to the inventory...
}
