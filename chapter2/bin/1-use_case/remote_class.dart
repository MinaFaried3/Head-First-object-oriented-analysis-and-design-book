import 'dart:async';

import 'dogDoor_class.dart';

class Remote {
  late DogDoor door;

  Remote({required this.door});

  Future<void> pressButton() async {
    print("Pressing the remote control button...");
    if (door.isOpen()) {
      door.close();
    } else {
      door.open();
    }

    Future.delayed(Duration(microseconds: 5), () {
      door.close();
    });
  }
}
