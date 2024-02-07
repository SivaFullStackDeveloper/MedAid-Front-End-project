import 'package:demo/screens/lab_screen.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/custom_widgets.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  CustomWidgets customWidgets = CustomWidgets();
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    LabTestsScreen(title: ''),
    Text('Reports',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 80,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customWidgets.customBottomBarIcons(
                () {
                  _onItemTapped(0);
                },
                _selectedIndex,
                "Home",
                "assets/home_2.png",
                _selectedIndex == 0 ? Colors.orange : Colors.transparent,
              ),
              customWidgets.customBottomBarIcons(
                () {
                  _onItemTapped(1);
                },
                _selectedIndex,
                "Lab Tests",
                "assets/lab_research.png",
                _selectedIndex == 1 ? Colors.orange : Colors.transparent,
              ),
              customWidgets.customBottomBarIcons(
                () {
                  _onItemTapped(2);
                },
                _selectedIndex,
                "Reports",
                "assets/lab_profile.png",
                _selectedIndex == 2 ? Colors.orange : Colors.transparent,
              ),
              customWidgets.customBottomBarIcons(
                () {
                  _onItemTapped(3);
                },
                _selectedIndex,
                "Settings",
                "assets/settings.png",
                _selectedIndex == 3 ? Colors.orange : Colors.transparent,
              ),
            ],
          ),
        ));
  }
}
