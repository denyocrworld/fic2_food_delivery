import 'dart:io';

void main() {
  Directory targetDir =
      Directory("C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT\\tutorial");
  Directory sourceDir = Directory(
      "C:\\Users\\denyo\\Documents\\FLUTTER_PROJECT\\capek_ngoding_web");

  var list = targetDir.listSync();
  for (var f in list) {
    // print(f);
    if (f.path.endsWith(".git")) {
      print(f);
    } else {
      if (f is File) {
        f.deleteSync(recursive: true);
      }
      if (f is Directory) {
        f.deleteSync(recursive: true);
      }
    }
  }

  list = sourceDir.listSync();
  for (var f in list) {
    // print(f);
    if (f.path.endsWith(".git")) {
      print(f);
    } else {
      if (f is File) {
        // f.deleteSync(recursive: true);
      }
      if (f is Directory) {
        // f.deleteSync(recursive: true);
      }
    }
  }
}
