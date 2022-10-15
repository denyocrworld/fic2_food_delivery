import 'package:fhe_template/core.dart';

import 'package:flutter/material.dart';

getRouters(
  context,
  rootNavigatorKey,
  shellNavigatorKey,
  initialRoute,
) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: initialRoute ?? '/dashboard',
    routes: <RouteBase>[
      GoRoute(
        path: '/hris_login',
        pageBuilder: (context, state) => noTransition(
          context: context,
          state: state,
          child: const HrisLoginView(),
        ),
      ),
      GoRoute(
        path: '/hris_employee_dashboard',
        pageBuilder: (context, state) => noTransition(
          context: context,
          state: state,
          child: const HrisEmployeeDashboardView(),
        ),
      ),
      GoRoute(
        path: '/hris_hr_dashboard',
        pageBuilder: (context, state) => noTransition(
          context: context,
          state: state,
          child: const HrisHrDashboardView(),
        ),
      ),
      GoRoute(
        path: '/hris_phone_login',
        pageBuilder: (context, state) => noTransition(
          context: context,
          state: state,
          child: const HrisPhoneLoginView(),
        ),
      ),
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MainNavigationView(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/login',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const LoginView(),
            ),
          ),
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DashboardView(),
            ),
          ),
          GoRoute(
            path: '/dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DashboardView(),
            ),
          ),
          GoRoute(
            path: '/customers',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CustomerListView(),
            ),
          ),
          GoRoute(
            path: '/products',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProductListView(),
            ),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProfileView(),
            ),
          ),
          GoRoute(
            path: '/orders',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const OrderListView(),
            ),
          ),
          GoRoute(
            path: '/reports',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ReportView(),
            ),
          ),
          GoRoute(
            path: '/settings',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const SettingView(),
            ),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProfileView(),
            ),
          ),
          GoRoute(
            path: '/users',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const UserListView(),
            ),
          ),
          GoRoute(
            path: '/events',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const EventListView(),
            ),
          ),
          GoRoute(
            path: '/blogs',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const BlogListView(),
            ),
          ),
          GoRoute(
            path: '/products',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProductListView(),
            ),
          ),
          GoRoute(
            path: '/card_template',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CardTemplateView(),
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
            path: '/http_examples',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const HttpExampleView(),
            ),
          ),
          GoRoute(
            path: '/table_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TableListView(),
            ),
          ),
          GoRoute(
            path: '/tab_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TabListView(),
            ),
          ),
          GoRoute(
            path: '/contoh_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ContohListView(),
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

          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
