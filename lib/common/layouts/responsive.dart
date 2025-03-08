import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Responsive extends StatelessWidget {
  //const ResponsiveLayout({super.key});
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const Responsive({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width > 650;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 650) {
          return mobileLayout;
        } else if (constraints.maxWidth < 1100 && constraints.maxWidth >= 650) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
