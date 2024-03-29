import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';
import 'package:responsive_architecture/ui/sizing_information.dart';
import 'package:responsive_architecture/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context); // 사용자 화면에 대한 정보를 얻을 수 있는 클래스
    
    return LayoutBuilder(builder: (context, constraints) { // 레이아웃 빌더
      var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation, 
      deviceScreenType: getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
      localWidgetSize: Size(constraints.maxWidth, constraints.maxHeight),
      );
      return builder(context, sizingInformation); // 리턴 타입이 widget이기 때문에 리턴 결과에 위젯들어갈 수 있다. () => widget
    });
  }
}