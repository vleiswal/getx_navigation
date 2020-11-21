import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_route_navigation/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('getx Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Goto Home'),
                onPressed: () async {
                  // Get.to(
                  //   Home(),
                  //   fullscreenDialog: true,
                  //   transition: Transition.leftToRightWithFade,
                  //   duration: Duration(milliseconds: 4000),
                  Get.to(Home(), arguments: 'Data from MAIN..');
                  var data = await Get.to(Home());
                  print('Data from Home is: $data');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
