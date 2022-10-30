import 'package:example/core.dart';

import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
    initialLocation: initialRoute ?? '/dashboard',
    redirect: (context, state) {
      return null;
    },
    routes: <RouteBase>[
      // GoRoute(
      //   path: '/hris_phone_login',
      //   pageBuilder: (context, state) => noTransition(
      //     context: context,
      //     state: state,
      //     child: const HrisPhoneLoginView(),
      //   ),
      // ),
      // GoRoute(
      //   path: '/dashboard',
      //   // pageBuilder: (context, state) => noTransition(
      //   //   context: context,
      //   //   state: state,
      //   //   child: const DashboardView(),
      //   // ),
      //   builder: (context, state) {
      //     return secureRoute(const DashboardView());
      //   },
      // ),
      // GoRoute(
      //   path: '/form_ui',
      //   // pageBuilder: (context, state) => noTransition(
      //   //   context: context,
      //   //   state: state,
      //   //   child: const FormUiView(),
      //   // ),
      //   builder: (context, state) {
      //     return secureRoute(const FormUiView());
      //   },
      // ),
      ShellRoute(
        navigatorKey: Get.shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MainNavigationView(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DashboardView(),
            ),
          ),
          GoRoute(
            path: '/form_ui',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const FormUiView(),
            ),
          ),

          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
