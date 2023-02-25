import 'util.dart';

releaseMagicBook() async {
  String target =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__flutter_magic_book";

  await copyAll(target);

  deleteDir("$target\\lib\\_");
  deleteDir(
    "$target\\lib\\module",
    onlyContent: true,
    exceptions: [
      "app",
      "online_class",
      // "main_navigation",
      // "dashboard",
      // "order",
      // "favorite",
      // "profile",
    ],
  );

  //Firebase?
  commonDelete(target);
  // await removeAllCommentInDir(hyperUiPublicPath);

  useFbkMainNavigationView(target);

  //Modification
  flutterMagicbookReadme(target);

  //Generate Core
  await generateCore(target);
  await formatLibDirectories(target);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: target,
  );
}
