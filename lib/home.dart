import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'This is the HOME screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text('Next Screen'),
            onPressed: () {},
            color: Colors.blue,
          ),
          RaisedButton(
            child: Text('Back to Main'),
            onPressed: () {
              Get.back();
            },
            color: Colors.blueAccent,
          ),
          SizedBox(height: 10),
          Text(
            "${Get.arguments}",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 14,
            ),
          ),
        ],
      )),
    );
  }
}
