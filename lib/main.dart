import 'package:example/core.dart';
import 'package:flutter/material.dart';

//hello world
/*
- fitur kirim lokasi-nya
- lihat lokasi (HR)
*/
void main() async {
  await initialize();
  await UserService.initialize();
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
    return MaterialApp(
      title: 'Capek Ngoding',
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: FirebaseAuth.instance.currentUser != null
          ? const PosMainNavigationView()
          : const PosLoginView(),
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
