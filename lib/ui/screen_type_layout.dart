import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';
import 'package:responsive_architecture/ui/base_widget.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ScreenTypeLayout({super.key, required this.mobile, this.tablet, this.desktop});


  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if(sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          if(tablet != null){
            return tablet!;
          }
        }

        if(sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          if(desktop != null){
            return desktop!;
          }
        }

        return mobile;
      },
    );

  }
}