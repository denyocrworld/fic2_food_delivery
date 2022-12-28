//variable
//print hello world
void main() {
  String message = "HelloWorld";
  List arr = [];
  for (var i = 0; i < message.length; i++) {
    var c = message[i];
    for (var i = 1; i <= 2; i++) {
      arr.add(c);
    }
  }

  String output = "";
  for (var i = 0; i < arr.length; i++) {
    if (i % 2 == 0) {
      output += arr[i];
    }
  }
  print(arr);
  print(output);
}
