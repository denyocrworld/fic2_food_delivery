import 'package:example/core.dart';

import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
    // initialLocation: initialRoute ?? '/dashboard',
    initialLocation: initialRoute ?? '/dashboard_food_delivery',
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
          return ThemeEditor.build(builder: (theme) {
            return Theme(
              data: theme,
              child: MainNavigationView(
                child: child,
              ),
            );
          });
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

          GoRoute(
            path: '/hyper_ui',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const HyperUiView(),
            ),
          ),
          GoRoute(
            path: '/card',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CardView(),
            ),
          ),
          GoRoute(
            path: '/theme',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ThemeView(),
            ),
          ),
          GoRoute(
            path: '/dashboard_todo_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DashboardTodoListView(),
            ),
          ),
          GoRoute(
            path: '/dashboard_food_delivery',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DashboardFoodDeliveryView(),
            ),
          ),
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
