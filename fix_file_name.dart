import 'dart:io';

void main() {
  var directory = Directory('./lib');
  var files = directory.listSync(
    recursive: true,
  );

  for (var file in files) {
    if (file is File) {
      var lowercasePath = file.path.toLowerCase();
      file.renameSync(lowercasePath);

      var content = file.readAsStringSync();
      var lines = content.split("\n");

      for (var i = 0; i < lines.length; i++) {
        var line = lines[i];
        if (line.trim().startsWith("import")) {
          lines[i] = lines[i].toLowerCase();
        }
      }

      file.writeAsStringSync(lines.join("\n"));
    } else if (file is Directory) {
      var lowercasePath = file.path.toLowerCase();
      file.renameSync(lowercasePath);
    }
  }
}
