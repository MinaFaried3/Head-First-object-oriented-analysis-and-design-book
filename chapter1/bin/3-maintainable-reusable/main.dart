import 'enums.dart';
import 'guitar.dart';
import 'guitar_spec.dart';
import 'inventory.dart';

/*
* Add a numStrings property and getNumStrings to GuitarSpec
* Modify Guitar so that the properties of GuitarSpec are encapsulated away from the constructor of the class.
* Change the search() method in Inventory to delegate comparing the two GuitarSpec objects to the GuitarSpec class, instead of handling the comparison directly.
*
*  */

void main() {
  Inventory inventory = Inventory();
  initializeInventory(inventory);

  GuitarSpec whatErinLikes = GuitarSpec(
      builder: Builder.FENDER,
      model: "Stratocastor",
      type: Type.ELECTRIC,
      backWood: Wood.ALDER,
      topWood: Wood.ALDER,
      numStrings: 6);

  inventory.addGuitar(
      serialNumber: "V95693",
      price: 1499.95,
      builder: Builder.FENDER,
      model: "Stratocastor",
      type: Type.ELECTRIC,
      backWood: Wood.ALDER,
      topWood: Wood.ALDER,
      numString: 6);

  inventory.addGuitar(
      serialNumber: "V9512",
      price: 1549.95,
      builder: Builder.FENDER,
      model: "Stratocastor",
      type: Type.ELECTRIC,
      backWood: Wood.ALDER,
      topWood: Wood.ALDER,
      numString: 6);

  List<Guitar?> matchingGuitars = inventory.search(whatErinLikes);

  if (matchingGuitars.isNotEmpty) {
    for (var guitar in matchingGuitars) {
      GuitarSpec? spec = guitar?.getGuitarSpec;
      print(
          "Erin, you might like this ${spec?.getBuilder?.convertToString()} ${spec?.getModel} ${spec?.numStrings}-strings ${spec?.getType?.convertToString()} guitar:\n  ${spec?.getBackWood?.convertToString()} back and sides,\n  ${spec?.getTopWood?.convertToString()} top.\nYou can have it for only \$ ${guitar?.getPrice} !");
      print("---------");
    }
  } else {
    print("Sorry, Erin, we have nothing for you");
  }
}

void initializeInventory(Inventory inventory) {
  // Add guitars to the inventory...
}
