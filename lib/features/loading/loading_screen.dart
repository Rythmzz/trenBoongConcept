import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: double.infinity,
            color: Colors.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "assets/image/logo.png",
                width: 280,
                height: 146,
              ),
              SizedBox(height: 120),
              CircularProgressIndicator(
                  color: Color.fromARGB(221, 225, 220, 220))
            ])));
  }
}
