import 'dogDoor_class.dart';

class Remote {
  late DogDoor door;

  Remote({required this.door});

  void pressButton() async {
    print("Pressing the remote control button...");
    if (door.isOpen()) {
      door.close();
    } else {
      await door.open();
    }
  }
}
