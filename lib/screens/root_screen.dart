import 'package:flutter/material.dart';
import '../components/text/app_bar_text.dart';
import '../constants/app_contants.dart';
import '../screens/account_screen.dart';
import '../screens/explore_screen.dart';
import '../screens/inbox_screen.dart';
import '../screens/saved_screen.dart';
import '../screens/trips_screen.dart';

class RootScreen extends StatefulWidget {

  static const String routeName = '/root';

  @override
  _RootScreenState createState() => _RootScreenState();

}

class _RootScreenState extends State<RootScreen> {

  int _selectedIndex = 0;
  final List<String> _screenTitles = <String>[
    'Explore',
    'Saved',
    'Trips',
    'Inbox',
    'Account',
  ];
  final List<Widget> _screens = <Widget>[
    ExploreScreen(),
    SavedScreen(),
    TripsScreen(),
    InboxScreen(),
    AccountScreen(),
  ];

  BottomNavigationBarItem _buildNavigationItem(int index, IconData iconData, String text) => BottomNavigationBarItem(
    icon: Icon(iconData, color: AppConstants.nonSelectedIconColor),
    activeIcon: Icon(iconData, color: AppConstants.selectedIconColor),
    title: Text(
      text,
      style: TextStyle(
        color: _selectedIndex == index ? AppConstants.selectedIconColor : AppConstants.nonSelectedIconColor,
      ),
    ),
  );

  @override
  Scaffold build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: AppBarText(text: _screenTitles[_selectedIndex]),
      automaticallyImplyLeading: false,
      centerTitle: true,
    ),
    body: _screens[_selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        _buildNavigationItem(0, Icons.search, _screenTitles[0]),
        _buildNavigationItem(1, Icons.favorite_border, _screenTitles[1]),
        _buildNavigationItem(2, Icons.location_on, _screenTitles[2]),
        _buildNavigationItem(3, Icons.chat_bubble_outline, _screenTitles[3]),
        _buildNavigationItem(4, Icons.person_outline, _screenTitles[4]),
      ],
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
    ),
  );

}