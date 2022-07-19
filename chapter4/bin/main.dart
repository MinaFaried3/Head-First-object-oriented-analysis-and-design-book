import 'bark_recognizer_class.dart';
import 'dogDoor_class.dart';
import 'remote_class.dart';

/*
*
*
* */
void main() async {
  DogDoor door = DogDoor();
  BarkRecognizer recognizer = BarkRecognizer(door: door);
  Remote remote = Remote(door: door);
  print("Fido starts barking.");
  recognizer.recognize("woof");

  print("\nFido has gone outside...");

  print("\nFido’s all done...");

  try {
    await Future.delayed(Duration(seconds: 5), () {
      throw Exception();
    });
  } catch (e) {
    print("...but he’s stuck outside!");
    print("Fido starts barking.");
    recognizer.recognize("woof");

    print("\nFido’s back inside... ");
  }
}
