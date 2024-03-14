import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(
              onPressed:() {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu, size: 30,)),
          )
        ],
      ),
    );
  }
}


class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Row(children: [
        AppDrawer()
      ],)
    );
  }
}