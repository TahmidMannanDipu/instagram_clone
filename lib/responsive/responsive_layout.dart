import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimention.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth > webScreen) {
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
