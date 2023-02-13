class Input {
  static Map<String, dynamic> values = {};
  static Map<String, InputControlState> inputController = {};

  static set(key, value) {
    values[key] = value;
  }

  static get(key) {
    return values[key];
  }

  static setValue(key, value) {
    inputController[key]?.setValue(value);
  }

  static getValue(key, value) {
    inputController[key]?.getValue();
  }

  static clear(key) {
    values.remove(key);
  }

  static resetValues() {
    inputController.forEach((key, value) {
      value.resetValue();
    });
  }
}

class InputControlState {
  getValue() {}
  setValue(value) {}
  resetValue() {}
}
