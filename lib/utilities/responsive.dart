import 'package:flutter/material.dart';

const double _largeScreenSize = 1100;
const double _xLlargeScreenSize = 1500;
const double _mediumScreenSize = 970;

class Responsiveness extends StatelessWidget {
  const Responsiveness({
    required this.largeScreenWidget,
    super.key,
    this.mediumScreenWidget,
    this.smallScreenWidget,
    this.xlScreenWidget,
  });

  final Widget largeScreenWidget;
  final Widget? mediumScreenWidget;
  final Widget? smallScreenWidget;
  final Widget? xlScreenWidget;

  /// [isSmallScreen(context)] returns a bool value based on the current screen width only
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < _mediumScreenSize;

  /// [isMediumScreen(context)] returns a bool value based on the current screen width only
  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= _mediumScreenSize &&
      MediaQuery.of(context).size.width < _largeScreenSize;

  /// [isLargeScreen(context)] returns a bool value based on the current screen width only
  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= _largeScreenSize &&
      MediaQuery.of(context).size.width < _xLlargeScreenSize;

  static bool isXlLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= _xLlargeScreenSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= _largeScreenSize) {
            return largeScreenWidget;
          } else if (constraints.maxWidth >= _mediumScreenSize) {
            return mediumScreenWidget ?? largeScreenWidget;
          } else if (constraints.maxWidth >= _xLlargeScreenSize) {
            return xlScreenWidget ?? largeScreenWidget;
          } else {
            return smallScreenWidget ?? mediumScreenWidget ?? largeScreenWidget;
          }
        },
      ),
    );
  }
}
