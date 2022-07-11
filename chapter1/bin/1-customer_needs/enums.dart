enum Type {
  ACOUSTIC,
  ELECTRIC;

  String convertToString() {
    switch (this) {
      case ACOUSTIC:
        return "acoustic";
      case ELECTRIC:
        return "electric";
      default:
        return '';
    }
  }
}

enum Builder {
  FENDER,
  MARTIN,
  GIBSON,
  COLLINGS,
  OLSON,
  RYAN,
  PRS,
  ANY;

  String convertToString() {
    switch (this) {
      case FENDER:
        return "fender";
      case MARTIN:
        return "martin";
      case GIBSON:
        return "gibson";
      case COLLINGS:
        return "collings";
      case OLSON:
        return "olson";
      case RYAN:
        return "ryan";
      case PRS:
        return "prs";
      case ANY:
        return "any";
      default:
        return '';
    }
  }
}

enum Wood {
  INDIAN_ROSEWOOD,
  BRAZILIAN_ROSEWOOD,
  MAHOGANY,
  MAPLE,
  COCOBOLO,
  CEDAR,
  ADIRONDACK,
  ALDER,
  SITKA;

  String convertToString() {
    switch (this) {
      case INDIAN_ROSEWOOD:
        return "Indian Rosewood";
      case BRAZILIAN_ROSEWOOD:
        return "Brazilian Rosewood";
      case MAHOGANY:
        return "mahogany";
      case MAPLE:
        return "maple";
      case COCOBOLO:
        return "cocobolo";
      case CEDAR:
        return "cedar";
      case ADIRONDACK:
        return "adirondack";
      case ALDER:
        return "alder";
      case SITKA:
        return "sitka";
      default:
        return '';
    }
  }
}
