import 'dart:convert';
import 'dart:io';

void main() async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_public";
//Jalankan perintah "cp -r tutorial.dart tutorial_copy.dart" dengan Dart
  print("Copy file");

  // await Process.run('rmdir', ['/s /q', hyperUiPublicPath])
  //     .then((ProcessResult results) {
  //   print(results.stdout);
  // });

  deleteDir(
    "$hyperUiPublicPath\\",
    onlyContent: true,
    exceptions: [".git"],
  );

  await Future.delayed(const Duration(seconds: 1));

  Directory dir = Directory.current;
  List list = dir.listSync(recursive: false);
  for (var ff in list) {
    if (ff.path.endsWith("\\build")) continue;

    if (ff is File) {
      if (ff.path.endsWith(".git")) continue;
      if (ff.path.endsWith(".dart")) continue;
      if (ff.path.endsWith(".bat")) continue;
      if (ff.path.endsWith("config.json")) continue;
      if (ff.path.endsWith("pubspec.lock")) continue;
      await Process.run('cp', ['-r', ff.path, hyperUiPublicPath])
          .then((ProcessResult results) {
        print(results.stdout);
      });
    } else if (ff is Directory) {
      await Process.run('cp', ['-r', ff.path, hyperUiPublicPath])
          .then((ProcessResult results) {
        print(results.stdout);
      });
    }
  }

  deleteDir("$hyperUiPublicPath\\lib\\_");
  deleteDir(
    "$hyperUiPublicPath\\lib\\module",
    onlyContent: true,
    exceptions: [
      "__example",
    ],
  );
  deleteDir("$hyperUiPublicPath\\lib\\firebase");
  deleteDir("$hyperUiPublicPath\\lib\\online_class");
  deleteDir("$hyperUiPublicPath\\lib\\pos");
  deleteDir("$hyperUiPublicPath\\lib\\random");
  deleteDir("$hyperUiPublicPath\\lib\\temp");
  deleteDir("$hyperUiPublicPath\\lib\\tutorial");

  //Firebase?
  deleteFile("$hyperUiPublicPath\\lib\\firebase_options.dart");
  deleteFile("$hyperUiPublicPath\\lib\\setup.dart");
  var f = File("$hyperUiPublicPath\\lib\\setup_basic.dart");
  f.copySync("$hyperUiPublicPath\\lib\\setup.dart");

  await removeAllCommentInDir(hyperUiPublicPath);
  return;
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
      content = content.replaceAll("CgMainView", "ExMainNavigationView");
    }

    file.writeAsStringSync(content);

    print("flutter format ${f.path}");
    try {
      await Process.run('flutter', ['format', f.path])
          .then((ProcessResult results) {
        print(results.stdout);
      });
    } on Exception catch (err) {
      print(err);
    }
  }
}
