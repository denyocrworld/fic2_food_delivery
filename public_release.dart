import 'util.dart';

void main() async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_public";

  await copyAll(hyperUiPublicPath);

  deleteDir("$hyperUiPublicPath\\lib\\_");
  deleteDir(
    "$hyperUiPublicPath\\lib\\module",
    onlyContent: true,
    exceptions: [
      "main_navigation",
      "dashboard",
      "order",
      "favorite",
      "profile",
    ],
  );

  //Firebase?
  commonDelete(hyperUiPublicPath);
  await removeAllCommentInDir(hyperUiPublicPath);

  useMainNavigationView(hyperUiPublicPath);

  //Modification
  // flutterMagicbookReadme(hyperUiPublicPath);

  //Generate Core
  await generateCore(hyperUiPublicPath);

  await formatLibDirectories(hyperUiPublicPath);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: hyperUiPublicPath,
  );
}
