import 'dart:convert';
import 'dart:io';

/*
Windows
xcopy /E /I "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\windows\runner\Release" "G:\My Drive\__PUBLIC\windows\"

Android
copy "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\app\outputs\flutter-apk\app-release.apk" "G:\My Drive\__PUBLIC\android\"

Local 
xcopy /E /I "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\windows\runner\Release" "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\docs\windows\"
copy "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\app\outputs\flutter-apk\app-release.apk" "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\docs\android\"

*/

void main() async {
  // await runCommand(
  //   "flutter build apk --release",
  // );

  // await runCommand(
  //   "flutter build windows",
  // );

  await runCommand(
    r'xcopy /E /I "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\windows\runner\Release" "G:\My Drive\__PUBLIC"',
  );
}

formatLibDirectories(hyperUiPublicPath) async {
  runCommand(
    'flutter format $hyperUiPublicPath\\lib',
    workingDirectory: hyperUiPublicPath,
  );
}

runCommand(
  String command, {
  String? workingDirectory,
}) {
  try {
    Process.runSync(command, [],
        includeParentEnvironment: true,
        runInShell: true,
        workingDirectory: workingDirectory);
  } on Exception catch (err) {
    print(err);
  }
}

generateCore(hyperUiPublicPath) async {
  var libPath = "$hyperUiPublicPath\\lib\\";
  var dir = Directory(libPath);
  var list = dir.listSync(recursive: true);
  var importContent = """
/*
We believe, the class name must be unique. 
If there is a conflicting class name in this file,
it means you have to rename it to something more unique.
*/
"""
      .trimLeft();
  for (var f in list) {
    if (f is File) {
      if (f.path.endsWith(".dart") == false) continue;
      var importPath =
          f.path.toString().replaceAll(libPath, "").replaceAll("\\", "/");
      var exportLine = "export 'package:hyper_ui/$importPath';";
      print(">> ${f.path}");
      print("@@ $importPath");

      if (importPath == "setup_basic.dart") continue;
      if (importPath == "main.dart") continue;
      if (importPath == "debug.dart") continue;
      if (importPath == "core.dart") continue;
      print(exportLine);

      importContent += "$exportLine\n";
    }
  }

  var coreFile = File("$hyperUiPublicPath\\lib\\core.dart");
  coreFile.writeAsStringSync(importContent);
}

deleteFile(String path) {
  var file = File(path);
  if (file.existsSync()) {
    file.deleteSync(recursive: true);
  }
}

deleteDir(
  String path, {
  bool onlyContent = false,
  List<String> exceptions = const [],
}) {
  if (onlyContent) {
    var dir = Directory(path);
    var list = dir.listSync(recursive: false);
    for (var f in list) {
      var name = f.path.split("\\").last;
      if (exceptions.contains(name)) continue;

      if (f is File) {
        deleteFile(f.path);
      } else if (f is Directory) {
        deleteDir(f.path);
      }
    }
    return;
  }

  var file = Directory(path);
  if (file.existsSync()) {
    file.deleteSync(recursive: true);
  }
}

removeAllCommentInDir(String path) async {
  var dir = Directory(path);
  var list = dir.listSync(recursive: true);
  for (var f in list) {
    var name = f.path.split("\\").last;
    if (f.path.endsWith(".dart") == false) continue;
    File file = File(f.path);
    var content = file.readAsStringSync(encoding: utf8);
    content = content.replaceAll("://", "@@--@@");
    content = content.replaceAll(RegExp(r'//.*|/\*[\s\S]*?\*/'), '');
    content = content.replaceAll("@@--@@", "://");

    if (file.path.endsWith("main.dart")) {
      content = content.replaceAll("CgMainView", "MainNavigationView");
    }

    file.writeAsStringSync(content);
  }
}
