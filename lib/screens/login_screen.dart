import 'package:flutter/material.dart';
import '../constants/app_contants.dart';

class LoginScreen extends StatefulWidget {

  static const String routeName = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48.0, 0, 48.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to ${ AppConstants.appName }',
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
                        decoration: InputDecoration(
                          labelText: 'Username/Email'
                        ),
                        style: TextStyle(
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
                        style: TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text('Login'),
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height / 20,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                  color: Colors.grey,
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
    );
  }

}