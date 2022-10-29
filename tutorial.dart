void main() {
  var price = 25000;
  print(price.toDuit());

  var total = 32500.25;
  print(total.toDuit());
}

extension DoubleNumberExtension on double {
  toDuit() {
    var value = toString();
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
    return value;
  }
}

extension IntNumberExtension on int {
  toDuit() {
    var value = toString();
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
    return value;
  }
}

//references:
//https://stackoverflow.com/questions/14865568/currency-format-in-dart