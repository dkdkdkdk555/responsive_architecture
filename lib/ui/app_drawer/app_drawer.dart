import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/app_drawer/app_drawer_mobile.dart';
import 'package:responsive_architecture/ui/app_drawer/app_drawer_tablet.dart';
import 'package:responsive_architecture/ui/drawer_option/drawer_option.dart';
import 'package:responsive_architecture/ui/orientation_layout.dart';
import 'package:responsive_architecture/ui/screen_type_layout.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: const OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscpae(),
      ),
    );
  }

  static List<Widget> getDrawerOptions(){
    return [
       const DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      const DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      const DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      const DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),

    ];
  }
}