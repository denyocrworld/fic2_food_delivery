import 'util.dart';

void main() async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__flutter_magic_book";

  await copyAll(hyperUiPublicPath);

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

  //Firebase?
  commonDelete(hyperUiPublicPath);
  // await removeAllCommentInDir(hyperUiPublicPath);

  useFbkMainNavigationView(hyperUiPublicPath);

  //Modification
  flutterMagicbookReadme(hyperUiPublicPath);

  //Generate Core
  await generateCore(hyperUiPublicPath);
  await formatLibDirectories(hyperUiPublicPath);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: hyperUiPublicPath,
  );
}
