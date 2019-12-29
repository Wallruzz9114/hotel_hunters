import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/personal_info_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/root_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/slpash_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        LoginScreen.routeName: (BuildContext context) => LoginScreen(),
        SignUpScreen.routeName: (BuildContext context) => SignUpScreen(),
        RootScreen.routeName: (BuildContext context) => RootScreen(),
        PersonalInfoScreen.routeName: (BuildContext context) => PersonalInfoScreen(),
        ProfileScreen.routeName: (BuildContext context) => ProfileScreen(),
      },
    );
  }
}
