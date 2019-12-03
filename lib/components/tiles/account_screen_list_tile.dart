import 'package:flutter/material.dart';

class AccountScreenListTile extends StatelessWidget {

  const AccountScreenListTile({ this.text, this.iconData });

  final String text;
  final IconData iconData;

  @override
  ListTile build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0.0),
      leading: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Icon(
        iconData,
        size: 30.0,
      ),
    );
  }

}