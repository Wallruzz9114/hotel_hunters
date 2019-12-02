import 'dart:async';
import 'package:flutter/material.dart';
import '../constants/app_contants.dart';
import '../screens/login_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      Duration(seconds: 1),
      () {
        Navigator.pushNamed(context, LoginScreen.routeName);
      }
    );
    super.initState();
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.hotel,
            size: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Welcome to ${ AppConstants.appName }',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ),
  );
}