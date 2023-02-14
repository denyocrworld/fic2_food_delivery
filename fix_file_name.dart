import 'dart:io';

void main() {
  var dir = Directory("./");
  var list = dir.listSync(recursive: true);
  for (var f in list) {
    if (f is Directory) {
    } else if (f is File) {}
  }
}
