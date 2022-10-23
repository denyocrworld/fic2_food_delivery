import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:example/_/template_card/view/template_card_view.dart';
import 'package:example/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();
  if (!kIsWeb && !Platform.isWindows) await UserService.initialize();
  if (!kIsWeb && !Platform.isWindows) {
    await FirebaseNotification.initialize();
  }

  runApp(const ShellRouteExampleApp());
}

class ShellRouteExampleApp extends StatelessWidget {
  const ShellRouteExampleApp({Key? key}) : super(key: key);
  Widget get userDashboardView {
    if (isHR) {
      return const HrisHrDashboardView();
    } else {
      return const HrisEmployeeDashboardView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ThemeEditor.build(
      builder: (theme) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: theme,
          // home: const CgModuleManagerView(),
          // home: const TemplateCardView(),
          home: const DebugView(),
          // home: const DebugView()
          // home: FirebaseAuth.instance.currentUser != null
          //     ? const PosMainNavigationView()
          //     : const PosLoginView(),
        );
      },
    );
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      // theme: getDarkTheme(),
      // theme: getDarkTheme(),
      home: const TemplateCardView().useThemeEditor,
      // home: const DebugView()
      // home: FirebaseAuth.instance.currentUser != null
      //     ? const PosMainNavigationView()
      //     : const PosLoginView(),
    );
    return MaterialApp.router(
      title: 'Capek Ngoding',
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      routerConfig: getRouters(
        context,
        Get.navigatorKey,
        Get.shellNavigatorKey,
        "/hris_login",
      ),
    );
  }
}
