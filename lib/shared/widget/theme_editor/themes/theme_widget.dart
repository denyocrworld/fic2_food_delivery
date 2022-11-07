import 'package:flutter/material.dart';

class ThemeWidget {}

//!WARNING
//TODO: Experimental

Widget sizedBoxWidth(width) => SizedBox(
      height: width,
    );

Widget sizedBoxHeight(height) => SizedBox(
      height: height,
    );

Widget get sw2 => sizedBoxWidth(2);
Widget get sw4 => sizedBoxWidth(4);
Widget get sw6 => sizedBoxWidth(6);
Widget get sw8 => sizedBoxWidth(8);
Widget get sw10 => sizedBoxWidth(10);
Widget get sw12 => sizedBoxWidth(12);
Widget get sw14 => sizedBoxWidth(14);
Widget get sw16 => sizedBoxWidth(16);
Widget get sw18 => sizedBoxWidth(18);
Widget get sw20 => sizedBoxWidth(20);

Widget get sh2 => sizedBoxHeight(2);
Widget get sh4 => sizedBoxHeight(4);
Widget get sh6 => sizedBoxHeight(6);
Widget get sh8 => sizedBoxHeight(8);
Widget get sh10 => sizedBoxHeight(10);
Widget get sh12 => sizedBoxHeight(12);
Widget get sh14 => sizedBoxHeight(14);
Widget get sh16 => sizedBoxHeight(16);
Widget get sh18 => sizedBoxHeight(18);
Widget get sh20 => sizedBoxHeight(20);
