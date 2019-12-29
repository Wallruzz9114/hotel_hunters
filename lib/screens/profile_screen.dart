import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../components/text/app_bar_text.dart';
// import '../screens/root_screen.dart';

class ProfileScreen extends StatefulWidget {

  static const String routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Scaffold build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const AppBarText(text: 'Profile Details'),
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 48.0, 24.0, 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 2 / 3,
                  child: const AutoSizeText(
                    'Hi! My name is Jose',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                    maxLines: 2,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: MediaQuery.of(context).size.width / 9.5,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/profile.jpeg'),
                    radius: MediaQuery.of(context).size.width / 10,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Text(
                'About me:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: AutoSizeText(
                'I like anime... That is all',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.home),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Location:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: AutoSizeText(
                'From Edmonton, Canada',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Text(
                'Reviews:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(),
            ),
          ],
        ),
      ),
    )
  );
  

}