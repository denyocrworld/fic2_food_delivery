import 'dart:io';

import 'util.dart';

void main() async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__flutter_magic_book";
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
      "online_class",
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

  //Firebase?
  deleteFile("$hyperUiPublicPath\\lib\\firebase_options.dart");
  deleteFile("$hyperUiPublicPath\\lib\\setup.dart");
  var f = File("$hyperUiPublicPath\\lib\\setup_basic.dart");
  f.copySync("$hyperUiPublicPath\\lib\\setup.dart");

  // await removeAllCommentInDir(hyperUiPublicPath);

  var mainFile = File("$hyperUiPublicPath\\lib\\main.dart");
  var mainFileContent = mainFile.readAsStringSync();
  mainFileContent =
      mainFileContent.replaceAll("CgMainView", "FbkMainNavigationView");
  mainFile.writeAsStringSync(mainFileContent);

  //Modification
  var readmeFile = File("$hyperUiPublicPath\\README.md");
  readmeFile.writeAsStringSync("""
# Flutter Magic Book by DenyOcr
Figma<br>
https://www.figma.com/file/PreoFlFsdSfKIGFpNGwaT8/Flutter-MagicBook?node-id=305%3A189&t=uD0cPaYw88v2hTIy-1<br>

---

Repository:<br>
git clone https://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@github.com/denyocrworld/flutter_magic_book.git<br>
"""
      .trim());

  //Generate Core
  await generateCore(hyperUiPublicPath);

  await formatLibDirectories(hyperUiPublicPath);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: hyperUiPublicPath,
  );
}
