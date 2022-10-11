import 'package:fhe_template/core.dart';
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

//http://localhost:8000?order_id=44OHkCKgS7omJGgZ9Iim_4l6wgLyZEbdgVqRm73GQLtVwETn1&status_code=200&transaction_status=settlement
void main() async {
  await initialize();

  // await Eventservice.handleQueryParameter();

  runApp(const ShellRouteExampleApp());
}

/// An example demonstrating how to use [ShellRoute]
class ShellRouteExampleApp extends StatelessWidget {
  /// Creates a [ShellRouteExampleApp]
  const ShellRouteExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Capek Ngoding',
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      routerConfig: getRouters(
        context,
        Get.navigatorKey,
        Get.shellNavigatorKey,
      ),
    );
  }
}
