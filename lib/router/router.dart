import 'package:example/core.dart';

import 'package:flutter/material.dart';

getRouters({
  String? initialRoute,
}) {
  return GoRouter(
    navigatorKey: Get.navigatorKey,
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
        navigatorKey: Get.shellNavigatorKey,
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

          GoRoute(
            path: '/contoh_dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ContohDashboardView(),
            ),
          ),
          GoRoute(
            path: '/product_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProductFormView(),
            ),
          ),
          GoRoute(
            path: '/new_product_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const NewProductFormView(),
            ),
          ),
          GoRoute(
            path: '/contoh_product_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ContohProductFormView(),
            ),
          ),
          GoRoute(
            path: '/contoh_baca_api',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ContohBacaApiView(),
            ),
          ),
          GoRoute(
            path: '/contoh_login',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ContohLoginView(),
            ),
          ),
          GoRoute(
            path: '/product_crud_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProductCrudListView(),
            ),
          ),
          GoRoute(
            path: '/product_crud_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProductCrudFormView(),
            ),
          ),
          GoRoute(
            path: '/ps_login',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsLoginView(),
            ),
          ),
          GoRoute(
            path: '/ps_main_navigation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsMainNavigationView(),
            ),
          ),
          GoRoute(
            path: '/ps_dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsDashboardView(),
            ),
          ),
          GoRoute(
            path: '/ps_profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsProfileView(),
            ),
          ),
          GoRoute(
            path: '/ps_share_parking_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsShareParkingFormView(),
            ),
          ),
          GoRoute(
            path: '/ps_parking_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsParkingListView(),
            ),
          ),
          GoRoute(
            path: '/ps_booking_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsBookingListView(),
            ),
          ),
          GoRoute(
            path: '/ps_user_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PsUserListView(),
            ),
          ),
          GoRoute(
            path: '/demo',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DemoView(),
            ),
          ),
          GoRoute(
            path: '/pos_login',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosLoginView(),
            ),
          ),
          GoRoute(
            path: '/pos_main_navigation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosMainNavigationView(),
            ),
          ),
          GoRoute(
            path: '/pos_dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosDashboardView(),
            ),
          ),
          GoRoute(
            path: '/pos_order_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosOrderListView(),
            ),
          ),
          GoRoute(
            path: '/pos_profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosProfileView(),
            ),
          ),
          GoRoute(
            path: '/pos',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosView(),
            ),
          ),
          GoRoute(
            path: '/pos_product_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosProductListView(),
            ),
          ),
          GoRoute(
            path: '/pos_product_form',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosProductFormView(),
            ),
          ),
          GoRoute(
            path: '/pos_table',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosTableView(),
            ),
          ),
          GoRoute(
            path: '/pos_checkout',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const PosCheckoutView(),
            ),
          ),
          GoRoute(
            path: '/cg_main_navigation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CgMainNavigationView(),
            ),
          ),
          GoRoute(
            path: '/cg_dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CgDashboardView(),
            ),
          ),
          GoRoute(
            path: '/cg_profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CgProfileView(),
            ),
          ),
          GoRoute(
            path: '/cg_module_manager',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const CgModuleManagerView(),
            ),
          ),
          GoRoute(
            path: '/debug_dashboard',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DebugDashboardView(),
            ),
          ),
          GoRoute(
            path: '/debug_profile',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DebugProfileView(),
            ),
          ),
          GoRoute(
            path: '/debug_order',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DebugOrderView(),
            ),
          ),
          GoRoute(
            path: '/dev_main_navigation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const DevMainNavigationView(),
            ),
          ),
          GoRoute(
      path: '/game',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const GameView(),
      ),
    ),
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
