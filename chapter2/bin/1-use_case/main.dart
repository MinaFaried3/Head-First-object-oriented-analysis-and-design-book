import 'dogDoor_class.dart';
import 'remote_class.dart';

/*
* add timer to door in pressButton fun
* use pressButton once
* */
void main() async {
  DogDoor door = DogDoor();
  Remote remote = Remote(door: door);
  print("Fido barks to go outside...");
  await remote.pressButton();
  print("\nFido has gone outside...");

  print("\nFido’s all done...");

  try {
    await Future.delayed(Duration(seconds: 5), () {
      throw Exception();
    });
  } catch (e) {
    print("...but he’s stuck outside!");
    print("Fido starts barking...");
    print("...so Gina grabs the remote control.");
    await remote.pressButton();

    print("\nFido’s back inside... ");
  }
}
