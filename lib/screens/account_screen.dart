import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../components/tiles/account_screen_list_tile.dart';
import '../screens/login_screen.dart';
import '../screens/personal_info_screen.dart';

class AccountScreen extends StatefulWidget {

  @override
  _AccountScreenState createState() => _AccountScreenState();

}

class _AccountScreenState extends State<AccountScreen> {

  void _logout() {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  void _showPersonalInfoScreen() {
    Navigator.pushNamed(context, PersonalInfoScreen.routeName);
  }

  @override
  Padding build(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: MediaQuery.of(context).size.width / 9.5,
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/images/profile.jpeg'),
                    radius: MediaQuery.of(context).size.width / 10,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <AutoSizeText>[
                    AutoSizeText(
                      'Jose Pinto',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    AutoSizeText(
                      'jpinto3@gmail.com',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: <MaterialButton>[
            MaterialButton(
              height: MediaQuery.of(context).size.height / 12,
              onPressed: _showPersonalInfoScreen,
              child: AccountScreenListTile(
                text: 'Personal Information',
                iconData: Icons.person,
              ),
            ),
            MaterialButton(
              height: MediaQuery.of(context).size.height / 12,
              onPressed: () {},
              child: AccountScreenListTile(
                text: 'Become a Host',
                iconData: Icons.hotel,
              ),
            ),
            MaterialButton(
              height: MediaQuery.of(context).size.height / 12,
              onPressed: _logout,
              child: const AccountScreenListTile(
                text: 'Logout',
                iconData: null,
              ),
            ),
          ],
        ),
      ],
    ),
  );
  

}