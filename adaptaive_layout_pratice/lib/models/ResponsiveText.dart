// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

// ^ 1-scaleFactor
// & 2- responsive Font Size
// ~ 3- (min,max) fontSize

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
