//#GROUP_TEMPLATE class
//#TEMPLATE hyperwind
import 'package:flutter/material.dart';

abstract class HyperWind {}

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

extension WidgetLayoutExtension on Widget {
  Widget expanded() {
    return Expanded(
      child: this,
    );
  }

  Widget p12() {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: this,
    );
  }

  Widget scroll() {
    return SingleChildScrollView(
      child: this,
    );
  }

  Widget scrollHorizontal() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: this,
    );
  }
}

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

get wxxs {
  return SizedBox(width: sizeXXS);
}

get wxs {
  return SizedBox(width: sizeXS);
}

get ws {
  return SizedBox(width: sizeS);
}

get wmd {
  return SizedBox(width: sizeMD);
}

get wl {
  return SizedBox(width: sizeL);
}

get wxl {
  return SizedBox(width: sizeXL);
}

get wxxl {
  return SizedBox(width: sizeXXL);
}

get wxxxl {
  return SizedBox(width: sizeXXXL);
}

//#END