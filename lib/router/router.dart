import 'package:example/core.dart';

import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
    initialLocation: initialRoute ?? '/dashboard',
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/hris_phone_login',
      //   pageBuilder: (context, state) => noTransition(
      //     context: context,
      //     state: state,
      //     child: const HrisPhoneLoginView(),
      //   ),
      // ),
      ShellRoute(
        navigatorKey: Get.shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MainNavigationView(child: child);
        },
        routes: const <RouteBase>[
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
