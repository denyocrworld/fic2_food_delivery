/*
Windows
xcopy /E /I "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\windows\runner\Release" "G:\My Drive\__PUBLIC\windows\"

Android
copy "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\app\outputs\flutter-apk\app-release.apk" "G:\My Drive\__PUBLIC\android\"

Local 
xcopy /E /I "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\windows\runner\Release" "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\docs\windows\"
copy "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\build\app\outputs\flutter-apk\app-release.apk" "C:\Users\denyo\Documents\FLUTTER_PROJECT\hyper_ui\docs\android\"

*/

import 'util.dart';

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
