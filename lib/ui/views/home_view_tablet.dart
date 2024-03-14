import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/app_drawer.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      const AppDrawer()
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
      ?
      Column(
        children: children,
      )
      :
      Row(children: children.reversed.toList(),),
    );
  }
}