import 'package:example/core.dart';

import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
    initialLocation: initialRoute ?? '/dashboard',
    // initialLocation: initialRoute ?? '/dashboard_todo_list',
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
          GoRoute(
            path: '/pos_example',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosExampleView(),
            ),
          ),
          GoRoute(
            path: '/debug',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DebugView(),
            ),
          ),
          GoRoute(
      path: '/style_guide',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const StyleGuideView(),
      ),
    ),
          GoRoute(
      path: '/scaffold_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ScaffoldUiView(),
      ),
    ),
          GoRoute(
      path: '/navigation_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const NavigationUiView(),
      ),
    ),
          GoRoute(
      path: '/appbar_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const AppbarUiView(),
      ),
    ),
          GoRoute(
      path: '/list_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ListUiView(),
      ),
    ),
          GoRoute(
      path: '/detail_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const DetailUiView(),
      ),
    ),
          GoRoute(
      path: '/tab_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TabUiView(),
      ),
    ),
          GoRoute(
      path: '/dialog_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const DialogUiView(),
      ),
    ),
          GoRoute(
      path: '/widget_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const WidgetUiView(),
      ),
    ),
          GoRoute(
      path: '/searchfield_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const SearchfieldUiView(),
      ),
    ),
          GoRoute(
      path: '/http_example',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const HttpExampleView(),
      ),
    ),
          GoRoute(
      path: '/http_form_example',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const HttpFormExampleView(),
      ),
    ),
          GoRoute(
      path: '/example',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ExampleView(),
      ),
    ),
          GoRoute(
      path: '/badge_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const BadgeUiView(),
      ),
    ),
          GoRoute(
      path: '/button_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ButtonUiView(),
      ),
    ),
          GoRoute(
      path: '/avatar_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const AvatarUiView(),
      ),
    ),
          GoRoute(
      path: '/pos_another_example',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const PosAnotherExampleView(),
      ),
    ),
          GoRoute(
      path: '/list_item_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ListItemUiView(),
      ),
    ),
          GoRoute(
      path: '/statistic_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const StatisticUiView(),
      ),
    ),
          GoRoute(
      path: '/chip_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ChipUiView(),
      ),
    ),
          GoRoute(
      path: '/accordions_ui',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const AccordionsUiView(),
      ),
    ),
          GoRoute(
      path: '/profile_ui_example',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const ProfileUiExampleView(),
      ),
    ),
          GoRoute(
      path: '/testxxx',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TestxxxView(),
      ),
    ),
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
