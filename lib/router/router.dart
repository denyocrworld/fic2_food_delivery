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
            path: '/bottom_navigation_bar_ui',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const BottomNavigationBarUiView(),
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
            path: '/profile_ui',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const ProfileUiView(),
            ),
          ),

          GoRoute(
            path: '/trsm_counter',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmCounterView(),
            ),
          ),
          GoRoute(
            path: '/trsm_loading',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmLoadingView(),
            ),
          ),
          GoRoute(
            path: '/trsm_visibility',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmVisibilityView(),
            ),
          ),
          GoRoute(
            path: '/trsm_navigation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmNavigationView(),
            ),
          ),
          GoRoute(
            path: '/trsm_enabled_and_disabled',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmEnabledAndDisabledView(),
            ),
          ),
          GoRoute(
            path: '/trsm_cart',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmCartView(),
            ),
          ),
          GoRoute(
            path: '/trsm_add_and_delete_from_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmAddAndDeleteFromListView(),
            ),
          ),
          GoRoute(
            path: '/trsm_loading_for_http_request',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmLoadingForHttpRequestView(),
            ),
          ),
          GoRoute(
            path: '/trsm_animation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmAnimationView(),
            ),
          ),
          GoRoute(
            path: '/trsm_digital_clock',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmDigitalClockView(),
            ),
          ),
          GoRoute(
            path: '/trsm_crud',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmCrudView(),
            ),
          ),
          GoRoute(
      path: '/tr',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrView(),
      ),
    ),
          GoRoute(
      path: '/trfm_login',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmLoginView(),
      ),
    ),
          GoRoute(
      path: '/trfm_login_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmLoginFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_signup_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmSignupFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_forgot_password_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmForgotPasswordFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_reset_password_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmResetPasswordFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_edit_profile_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmEditProfileFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_product_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmProductFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_checkout_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmCheckoutFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_review_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmReviewFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_filter_date_dialog_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmFilterDateDialogFormView(),
      ),
    ),
          GoRoute(
      path: '/trfm_filter_category_and_date_bottomsheet_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmFilterCategoryAndDateBottomsheetFormView(),
      ),
    ),
          GoRoute(
      path: '/trsm_filter_list',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmFilterListView(),
      ),
    ),
          GoRoute(
      path: '/trsm_horizontal_category_list',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmHorizontalCategoryListView(),
      ),
    ),
          GoRoute(
      path: '/trsm_vertical_category_list',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmVerticalCategoryListView(),
      ),
    ),
          GoRoute(
      path: '/trsm_category_in_wrap',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmCategoryInWrapView(),
      ),
    ),
          GoRoute(
      path: '/trfm_edit_store_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrfmEditStoreFormView(),
      ),
    ),
          GoRoute(
      path: '/trsm_slide_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmSlideAnimationView(),
      ),
    ),
          GoRoute(
      path: '/trsm_fade_in_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmFadeInAnimationView(),
      ),
    ),
          GoRoute(
      path: '/trsm_fade_out_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmFadeOutAnimationView(),
      ),
    ),
          GoRoute(
      path: '/trsm_scale_in_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmScaleInAnimationView(),
      ),
    ),
          GoRoute(
      path: '/trsm_scale_out_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const TrsmScaleOutAnimationView(),
      ),
    ),
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
