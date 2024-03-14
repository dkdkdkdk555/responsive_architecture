import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_architecture/ui/drawer_option/drawer_option_tablet.dart';
import 'package:responsive_architecture/ui/orientation_layout.dart';
import 'package:responsive_architecture/ui/screen_type_layout.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerOptionMobilePortrait(
          iconData: iconData,
          title : title,
        ),
        landscape: DrawerOptionMobileLandscape(
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        portrait: DrawerOptionTabletPortrait(
         iconData: iconData,
         title: title,
        ),
        landscape: DrawerOptionMobilePortrait(
          iconData: iconData,
          title : title,
        ),
      ),
    );
  }
}