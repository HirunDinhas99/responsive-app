import 'package:flutter/material.dart';

class Responsive {
  //mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;
  //tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  //desktop
  static bool isDeskto(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
