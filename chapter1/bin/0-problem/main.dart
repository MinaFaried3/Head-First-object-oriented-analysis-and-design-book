import 'guitar.dart';
import 'inventory.dart';

void main() {
  Inventory inventory = Inventory();
  initializeInventory(inventory);
  Guitar whatErinLikes = Guitar(
    serialNumber: "",
    price: 0,
    builder: "fender",
    model: "Stratocastor",
    type: "electric",
    backWood: "Alder",
    topWood: "Alder",
  );

  // notice can't find this guitar because builder starts with capital letter
  inventory.addGuitar(
      serialNumber: "V95693",
      price: 1499.95,
      builder: "Fender",
      model: "Stratocastor",
      type: "electric",
      backWood: "Alder",
      topWood: "Alder");

  Guitar? guitar = inventory.search(whatErinLikes);

  if (guitar != null) {
    print(
        "Erin, you might like this ${guitar.getBuilder} ${guitar.getModel} ${guitar.getType} guitar:\n${guitar.getBackWood} back and sides,\n${guitar.getTopWood} top.\nYou can have it for only \$ ${guitar.getPrice} !");
  } else {
    print("Sorry, Erin, we have nothing for you");
  }
}

void initializeInventory(Inventory inventory) {
  // Add guitars to the inventory...
}
