import 'public_release_magic_book.dart';
import 'util.dart';

void main() async {
  await release(false);
  await release(true);
  await releaseMagicBook();
}

release(bool blankMode) async {
  String target = r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_public";
  if (blankMode) {
    target = r"C:\Users\denyo\Documents\FLUTTER_PROJECT\__hyper_ui_blank";
  }
  await copyAll(target);

  deleteDir("$target\\lib\\_");

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
    "$target\\lib\\module",
    onlyContent: true,
    exceptions: exceptions,
  );

  //Firebase?
  commonDelete(target);
  await removeAllCommentInDir(target);

  if (blankMode) {
    useContainer(target);
  } else {
    useMainNavigationView(target);
  }

  //Modification
  // flutterMagicbookReadme(hyperUiPublicPath);

  cleanService(target);
  cleanModel(target);
  // if (blankMode) {
  //   cleanModule(hyperUiPublicPath);
  // }

  //Generate Core
  await generateCore(target);
  await formatLibDirectories(target);

  runCommand(
    "git add . && git commit -m '.' && git push --force",
    workingDirectory: target,
  );
}
