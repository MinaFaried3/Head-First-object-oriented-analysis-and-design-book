import 'dogDoor_class.dart';
import 'remote_class.dart';

void main() {
  DogDoor door = DogDoor();
  Remote remote = Remote(door: door);
  print("Fido barks to go outside...");
  remote.pressButton();
  print("\nFido has gone outside...");
  remote.pressButton();
  print("\nFido’s all done...");
  remote.pressButton();
  print("\nFido’s back inside...");
  remote.pressButton();
}
