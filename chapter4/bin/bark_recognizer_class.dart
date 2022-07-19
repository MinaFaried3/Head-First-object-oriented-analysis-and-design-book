import 'dogDoor_class.dart';

class BarkRecognizer {
  final DogDoor door;

  BarkRecognizer({required this.door});

  void recognize(String bark) {
    print("   BarkRecognizer: Heard a  '$bark'");
    door.open();
  }
}
