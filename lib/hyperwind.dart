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
  expanded() {
    return Expanded(
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