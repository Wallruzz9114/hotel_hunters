import 'package:flutter/material.dart';
import '../components/text/app_bar_text.dart';
import '../screens/root_screen.dart';

class PersonalInfoScreen extends StatefulWidget {

  static const String routeName = '/personal';

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();

}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {

  void _updateInfo() {
    Navigator.pushNamed(context, RootScreen.routeName);
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const AppBarText(text: 'Personal Information'),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.save,
            color: Colors.white,
          ),
          onPressed: _updateInfo,
        ),
      ],
    ),
    body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48.0, 0, 48.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                child: Column(
                  children: <Padding>[
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First Name'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last Name'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'City'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Country'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Bio'
                        ),
                        style: const TextStyle(
                          fontSize: 16.0
                        ),
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: MediaQuery.of(context).size.width / 4.8,
                    child: CircleAvatar(
                      backgroundImage: const AssetImage('assets/images/profile.jpeg'),
                      radius: MediaQuery.of(context).size.width / 5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  

}