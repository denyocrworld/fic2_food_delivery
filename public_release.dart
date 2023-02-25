import 'util.dart';

void main() async {
  await release(false);
  await release(true);
}

release(bool blankMode) async {
  String hyperUiPublicPath =
      r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_public";
  if (blankMode) {
    hyperUiPublicPath =
        r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_blank";
  }
  await copyAll(hyperUiPublicPath);

  deleteDir("$hyperUiPublicPath\\lib\\_");

  List<String> exceptions = [];
  if (!blankMode) {
    exceptions.addAll([
      "main_navigation",
      "dashboard",
      "order",
      "favorite",
      "profile",
    ]);
  }
  deleteDir(
    "$hyperUiPublicPath\\lib\\module",
    onlyContent: true,
    exceptions: exceptions,
  );

  //Firebase?
  commonDelete(hyperUiPublicPath);
  await removeAllCommentInDir(hyperUiPublicPath);

  if (blankMode) {
    useContainer(hyperUiPublicPath);
  } else {
    useMainNavigationView(hyperUiPublicPath);
  }

  //Modification
  // flutterMagicbookReadme(hyperUiPublicPath);

  cleanService(hyperUiPublicPath);
  cleanModel(hyperUiPublicPath);
  // if (blankMode) {
  //   cleanModule(hyperUiPublicPath);
  // }

  //Generate Core
  await generateCore(hyperUiPublicPath);
  await formatLibDirectories(hyperUiPublicPath);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: hyperUiPublicPath,
  );
}
