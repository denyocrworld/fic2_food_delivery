import 'package:go_router/go_router.dart';
import '../state_util.dart';

get ctx {
  return Get.shellNavigatorKey.currentState!.context;
}

go(routeName) {
  GoRouter.of(ctx).go(
    routeName,
  );
}
