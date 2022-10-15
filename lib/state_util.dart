import 'package:flutter/material.dart';

class Get {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>();

  static get currentContext {
    return navigatorKey.currentContext;
  }

  static to(Widget page) async {
    await navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static back() {
    navigatorKey.currentState!.pop(currentContext);
  }

  static offAll(page) {
    navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }

  static double get width {
    return MediaQuery.of(currentContext).size.width;
  }

  static double get height {
    return MediaQuery.of(currentContext).size.width;
  }
}

extension ChangeNotifierExtension on State {
  update() {
    // ignore: invalid_use_of_visible_for_testing_member, unnecessary_this, invalid_use_of_protected_member
    this.setState(() {});
  }
}

class MvcController {}

/*
Helper
*/

get mq {
  return MediaQuery.of(Get.currentContext);
}

double get sizeXXXS => 1.0;
double get sizeXXS => 2.0;
double get sizeXS => 4.0;
double get sizeS => 6.0;
double get sizeMD => 8.0;
double get sizeL => 12.0;
double get sizeXL => 16.0;
double get sizeXXL => 20.0;
double get sizeXXXL => 30.0;

double get heightXtraSmall => 30;
double get heightSmall => 40;
double get heightMedium => 50;
double get heightLarge => 60;
double get heightXtraLarge => 70;

extension WidgetSizeExtension on Widget {
  xs() {
    return SizedBox(
      height: heightXtraSmall,
      child: this,
    );
  }

  sm() {
    return SizedBox(
      height: heightSmall,
      child: this,
    );
  }

  md() {
    return SizedBox(
      height: heightMedium,
      child: this,
    );
  }

  lg() {
    return SizedBox(
      height: heightLarge,
      child: this,
    );
  }

  xl() {
    return SizedBox(
      height: heightXtraLarge,
      child: this,
    );
  }
}

//#GENERATED_CODE
get hxxxs {
  return SizedBox(height: sizeXXXS);
}

get hxxs {
  return SizedBox(height: sizeXXS);
}

get hxs {
  return SizedBox(height: sizeXS);
}

get hs {
  return SizedBox(height: sizeS);
}

get hmd {
  return SizedBox(height: sizeMD);
}

get hl {
  return SizedBox(height: sizeL);
}

get hxl {
  return SizedBox(height: sizeXL);
}

get hxxl {
  return SizedBox(height: sizeXXL);
}

get hxxxl {
  return SizedBox(height: sizeXXXL);
}

get wxxxs {
  return SizedBox(width: sizeXXXS);
}

/*
//#TEMPLATE hxxxs
hxxxs,
//#END

//#TEMPLATE wxxxs
wxxxs,
//#END
*/

get wxxs {
  return SizedBox(width: sizeXXS);
}

/*
//#TEMPLATE hxxs
hxxs,
//#END

//#TEMPLATE wxxs
wxxs,
//#END
*/

get wxs {
  return SizedBox(width: sizeXS);
}

/*
//#TEMPLATE hxs
hxs,
//#END

//#TEMPLATE wxs
wxs,
//#END
*/

get ws {
  return SizedBox(width: sizeS);
}

/*
//#TEMPLATE hs
hs,
//#END

//#TEMPLATE ws
ws,
//#END
*/

get wmd {
  return SizedBox(width: sizeMD);
}

/*
//#TEMPLATE hmd
hmd,
//#END

//#TEMPLATE wmd
wmd,
//#END
*/

get wl {
  return SizedBox(width: sizeL);
}

/*
//#TEMPLATE hl
hl,
//#END

//#TEMPLATE wl
wl,
//#END
*/

get wxl {
  return SizedBox(width: sizeXL);
}

/*
//#TEMPLATE hxl
hxl,
//#END

//#TEMPLATE wxl
wxl,
//#END
*/

get wxxl {
  return SizedBox(width: sizeXXL);
}

/*
//#TEMPLATE hxxl
hxxl,
//#END

//#TEMPLATE wxxl
wxxl,
//#END
*/

get wxxxl {
  return SizedBox(width: sizeXXXL);
}

/*
//#TEMPLATE hxxxl
hxxxl,
//#END

//#TEMPLATE wxxxl
wxxxl,
//#END
*/
