import 'package:flutter/material.dart';
import 'package:responsive_architecture/ui/base_widget.dart';
import 'package:responsive_architecture/ui/sizing_information.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Container(
                height: 150,
                margin: const EdgeInsets.all(50),
                color: Colors.blue,
                child: BaseWidget(builder: (context, sizingInformation)
                  => Text(sizingInformation.toString(),),
                ),
              ),
              Text(sizingInformation.toString()),
            ],
          ),
        ),
      );
    },);
  }
}