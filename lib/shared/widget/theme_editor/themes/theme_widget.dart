import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ThemeWidget {}

//!WARNING
//TODO: Experimental
Widget sizedBoxWidth(double width) => SizedBox(
      width: width,
    );

Widget sizedBoxHeight(double height) => SizedBox(
      height: height,
    );

Widget sw2() => sizedBoxWidth(2);
Widget sw4() => sizedBoxWidth(4);
Widget sw6() => sizedBoxWidth(6);
Widget sw8() => sizedBoxWidth(8);
Widget sw10() => sizedBoxWidth(10);
Widget sw12() => sizedBoxWidth(12);
Widget sw14() => sizedBoxWidth(14);
Widget sw16() => sizedBoxWidth(16);
Widget sw18() => sizedBoxWidth(18);
Widget sw20() => sizedBoxWidth(20);

Widget sh2() => sizedBoxHeight(2);
Widget sh4() => sizedBoxHeight(4);
Widget sh6() => sizedBoxHeight(6);
Widget sh8() => sizedBoxHeight(8);
Widget sh10() => sizedBoxHeight(10);
Widget sh12() => sizedBoxHeight(12);
Widget sh14() => sizedBoxHeight(14);
Widget sh16() => sizedBoxHeight(16);
Widget sh18() => sizedBoxHeight(18);
Widget sh20() => sizedBoxHeight(20);

extension WidgetExtension on Widget {
  xs() {
    return SizedBox(
      width: wxs,
      height: wxs,
      child: FittedBox(
        child: this,
      ),
    );
  }

  sm() {
    return SizedBox(
      width: wsm,
      height: wsm,
      child: FittedBox(
        child: this,
      ),
    );
  }

  md() {
    return SizedBox(
      width: wmd,
      height: wmd,
      child: FittedBox(
        child: this,
      ),
    );
  }

  lg() {
    return SizedBox(
      width: wlg,
      height: wlg,
      child: FittedBox(
        child: this,
      ),
    );
  }

  xl() {
    return SizedBox(
      width: wxl,
      height: wxl,
      child: FittedBox(
        child: this,
      ),
    );
  }

  Widget fullWidth() {
    return SizedBox(
      width: MediaQuery.of(globalContext).size.width,
      child: this,
    );
  }

  Widget fw90() {
    return FittedBox(
      child: SizedBox(
        width: 2000,
        height: 120,
        child: FittedBox(
          child: this,
        ),
      ),
    );
  }

  Widget fw30() {
    return SizedBox(
      width: MediaQuery.of(globalContext).size.width,
      height: 30,
      child: FittedBox(
        child: this,
      ),
    );
  }

  Widget h90() {
    return SizedBox(
      height: 90,
      child: this,
    );
  }

  Widget h30() {
    return SizedBox(
      height: 30,
      child: this,
    );
  }

  Widget h40() {
    return SizedBox(
      height: 40,
      child: this,
    );
  }

  Widget fit() {
    return FittedBox(
      child: this,
    );
  }
}
