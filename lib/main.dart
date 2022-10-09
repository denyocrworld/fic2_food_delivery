import 'package:fhe_template/core.dart';
// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

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
      routerConfig: getRouters(context, rootNavigatorKey, shellNavigatorKey),
    );
  }
}

/*
[[ NEW UPDATE!!!!! ]
String Parser

@i.productName
@i.price
@i.photo

@m.productName
@m.price
@m.photo

@p.productName
@p.item.name
@p.product.name

HOTKEY( SHIFT + ALT + E)

*/
