class DogDoor {
  late bool _open;

  DogDoor() {
    _open = false;
  }

  Future<void> open() async {
    print("The dog door opens.");
    _open = true;

    Future.delayed(Duration(microseconds: 5), () {
      close();
    });
  }

  void close() {
    print("The dog door closes.");
    _open = false;
  }

  bool isOpen() {
    return _open;
  }
}
