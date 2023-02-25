import 'dart:io';

import 'util.dart';

void main() async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_blank";
//Jalankan perintah "cp -r tutorial.dart tutorial_copy.dart" dengan Dart

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

    if (ff.path.endsWith(".git")) continue;

    if (ff is File) {
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
      // "__example",
      // "main_navigation",
      // "dashboard",
      // "order",
      // "favorite",
      // "profile",
    ],
  );
  deleteDir("$hyperUiPublicPath\\lib\\firebase");
  deleteDir("$hyperUiPublicPath\\lib\\online_class");
  deleteDir("$hyperUiPublicPath\\lib\\pos");
  deleteDir("$hyperUiPublicPath\\lib\\random");
  deleteDir("$hyperUiPublicPath\\lib\\temp");
  deleteDir("$hyperUiPublicPath\\lib\\tutorial");

  //Others
  deleteDir("$hyperUiPublicPath\\fic-exercises");
  deleteDir("$hyperUiPublicPath\\test");
  deleteDir("$hyperUiPublicPath\\web");
  deleteFile("$hyperUiPublicPath\\lib\\state_util.dart");

  //Firebase?
  deleteFile("$hyperUiPublicPath\\lib\\firebase_options.dart");
  deleteFile("$hyperUiPublicPath\\lib\\setup.dart");
  var f = File("$hyperUiPublicPath\\lib\\setup_basic.dart");
  f.copySync("$hyperUiPublicPath\\lib\\setup.dart");
  deleteFile("$hyperUiPublicPath\\lib\\setup_basic.dart");

  await removeAllCommentInDir(hyperUiPublicPath);

  //Generate Core
  await generateCore(hyperUiPublicPath);

  await formatLibDirectories(hyperUiPublicPath);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: hyperUiPublicPath,
  );
}
