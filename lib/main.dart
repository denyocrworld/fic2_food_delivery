import 'package:example/core.dart';
import 'package:flutter/material.dart';

//http://localhost:8000?order_id=44OHkCKgS7omJGgZ9Iim_4l6wgLyZEbdgVqRm73GQLtVwETn1&status_code=200&transaction_status=settlement
/*

- fitur kirim lokasi-nya
- lihat lokasi (HR)
*/
void main() async {
  await initialize();
  await UserService.initialize();

  // await Eventservice.handleQueryParameter();

  runApp(const ShellRouteExampleApp());
}

/// An example demonstrating how to use [ShellRoute]
class ShellRouteExampleApp extends StatelessWidget {
  /// Creates a [ShellRouteExampleApp]
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
    return MaterialApp(
      title: 'Capek Ngoding',
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      // home: const DebugView(),
      // home: FirebaseAuth.instance.currentUser != null
      //     ? const PsMainNavigationView()
      //     : const PsLoginView(),
      home: const DemoView(),
      // home: const ContohBacaApiView(),
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
      // home: const MagicSnippetView(),
      // home: FirebaseAuth.instance.currentUser != null
      //     ? userDashboardView
      //     : const HrisLoginView(),
      // home: const TemplateCardView(),
    );

    // return MaterialApp.router(
    //   title: 'Capek Ngoding',
    //   debugShowCheckedModeBanner: false,
    //   theme: getDefaultTheme(),
    //   routerConfig: getRouters(
    //     context,
    //     Get.navigatorKey,
    //     Get.shellNavigatorKey,
    //   ),
    // );
  }
}
//TODO: perbaiki kode ini yaa
//* perbaiki kode ini yaa
//? perbaiki kode ini yaa
//! perbaiki kode ini yaa
/*
Extension
- Flutter
- Dart
- Better Comments
- JSON to Dart Model (by Hirantha)
- Flutter Hyper Extension
*/
