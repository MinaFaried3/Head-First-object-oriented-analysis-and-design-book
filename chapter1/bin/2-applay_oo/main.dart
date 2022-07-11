import 'enums.dart';
import 'guitar.dart';
import 'inventory.dart';

/*
* customers never supply a serial number or a price
* create guitarSpec class
* 
*
* */

void main() {
  Inventory inventory = Inventory();
  initializeInventory(inventory);
  Guitar whatErinLikes = Guitar(
    serialNumber: "",
    price: 0,
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
      print(
          "Erin, you might like this ${guitar!.getBuilder?.convertToString()} ${guitar.getModel} ${guitar.getType?.convertToString()} guitar:\n  ${guitar.getBackWood?.convertToString()} back and sides,\n  ${guitar.getTopWood?.convertToString()} top.\nYou can have it for only \$ ${guitar.getPrice} !");
      print("---------");
    }
  } else {
    print("Sorry, Erin, we have nothing for you");
  }
}

void initializeInventory(Inventory inventory) {
  // Add guitars to the inventory...
}
