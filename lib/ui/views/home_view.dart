import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';
import 'package:responsive_architecture/ui/orientation_layout.dart';
import 'package:responsive_architecture/ui/screen_type_layout.dart';
import 'package:responsive_architecture/ui/sizing_information.dart';
import 'package:responsive_architecture/ui/views/home_view_mobile.dart';
import 'package:responsive_architecture/ui/views/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: const HomeMobileLandscape(),
      ),
      tablet: const HomeViewTablet(),
    );
  }
}