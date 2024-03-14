import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

// 반응형을 위한 UI 정보
class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    required this.orientation, 
    required this.deviceScreenType, 
    required this.screenSize, 
    required this.localWidgetSize
  });

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType ScreenSize$screenSize LocalWidgetSize:$localWidgetSize';
  }
}