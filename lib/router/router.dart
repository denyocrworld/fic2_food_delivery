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
            path: '/trsm_animation_by_mouse_event',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmAnimationByMouseEventView(),
            ),
          ),
          GoRoute(
            path: '/trsm_fade_animation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmFadeAnimationView(),
            ),
          ),
          GoRoute(
            path: '/trsm_scale_animation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmScaleAnimationView(),
            ),
          ),
          GoRoute(
            path: '/trsm_rotate_animation',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmRotateAnimationView(),
            ),
          ),
          GoRoute(
            path: '/trsm_scale_animation_by_slide_value',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmScaleAnimationBySlideValueView(),
            ),
          ),
          GoRoute(
            path: '/trsm_chat_list',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const TrsmChatListView(),
            ),
          ),
          GoRoute(
            path: '/heading_ui',
            pageBuilder: (context, state) => noTransition(
              context: context,
              state: state,
              child: const HeadingUiView(),
            ),
          ),
          GoRoute(
      path: '/ltsm_counter',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmCounterView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_loading',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmLoadingView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_visibility',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmVisibilityView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_enabled_or_disabled',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmEnabledOrDisabledView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_slide_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmSlideAnimationView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_fade_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmFadeAnimationView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_rotate_animation',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmRotateAnimationView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_horizontal_category_list',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmHorizontalCategoryListView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_vertical_category_list',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmVerticalCategoryListView(),
      ),
    ),
          GoRoute(
      path: '/ltsm_crud',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtsmCrudView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_login',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmLoginView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_sign_up',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmSignUpView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_edit_profile',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmEditProfileView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_product_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmProductFormView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_review_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmReviewFormView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_checkout_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmCheckoutFormView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_filter_dialog',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmFilterDialogView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_filter_bottom_sheet',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmFilterBottomSheetView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_sliding_form',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmSlidingFormView(),
      ),
    ),
          GoRoute(
      path: '/ltfm_reset_password',
      pageBuilder: (context, state) => noTransition(
        context: context,
        state: state,
        child: const LtfmResetPasswordView(),
      ),
    ),
          //@ROUTER_GENERATOR
        ],
      ),
    ],
  );
}
