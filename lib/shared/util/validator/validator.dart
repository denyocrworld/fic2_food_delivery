class Validator {
  static String? rule(
    String? value, {
    bool required = false,
  }) {
    if (required && value!.isEmpty) {
      return "This field is required";
    }
    return null;
  }

  //!String validator
  static String? required(String? value) {
    if (value!.isEmpty) return "This field is required";
    return null;
  }

  static String? email(String? value) {
    if (value!.isEmpty) return "This field is required";

    final bool isValidEmail = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if (!isValidEmail) {
      return "This field is not in a valid email format";
    }
    return null;
  }

  //!List validator
  static String? atLeastOneitem(List<Map<String, dynamic>> items) {
    var checkedItems = items.where((i) => i["checked"] == true).toList();
    if (checkedItems.isEmpty) {
      return "you must choose at least one item";
    }
    return null;
  }
}
