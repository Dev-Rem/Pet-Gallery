import 'package:flutter/material.dart';
import 'package:pet_gallery/homePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Search Page'),
    Text('New Post Page'),
    Text('Chat Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.5,
            shadowColor: Color.fromARGB(255, 255, 255, 255),
            surfaceTintColor: Color.fromARGB(255, 255, 255, 255),
            title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Pet Gallery',
                style: TextStyle(
                    fontFamily: "Sacramento",
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          body: Container(
            color: Color.fromARGB(255, 237, 229, 221),
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30.0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.search),
                icon: Icon(Icons.search_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.add_circle),
                icon: Icon(
                  Icons.add_circle_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.chat),
                  icon: Icon(Icons.chat),
                  label: ""),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.pets),
                icon: Icon(Icons.pets_outlined),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromARGB(255, 121, 94, 56),
            unselectedItemColor: Color.fromARGB(255, 217, 191, 166),
            onTap: _onItemTapped,
          ),
        ));
  }
}
