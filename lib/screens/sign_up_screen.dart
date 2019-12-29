import 'package:flutter/material.dart';
import '../components/text/app_bar_text.dart';
import '../screens/root_screen.dart';

class SignUpScreen extends StatefulWidget {

  static const String routeName = '/signup';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();

}

class _SignUpScreenState extends State<SignUpScreen> {

  void _signUp() {
    Navigator.pushNamed(context, RootScreen.routeName);
  }

  @override
  Scaffold build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const AppBarText(text: 'Sign Up'),
    ),
    body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48.0, 0, 48.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Register',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Form(
                child: Column(
                  children: <Padding>[
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                        decoration: const InputDecoration(
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
                  onPressed: _signUp,
                  child: const Text('Submit'),
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height / 20,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
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