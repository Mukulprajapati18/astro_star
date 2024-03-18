import 'package:flutter/material.dart';
import 'package:astro_star/pages/account.dart';
import 'package:astro_star/pages/home.dart';
import 'package:astro_star/pages/messsage.dart';
import 'package:astro_star/pages/settings.dart';

//class homepage which extends a stateful widget
class HomePage extends StatefulWidget{

  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();

}

//class _Homepage which extends State widget
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //function to dynamically navigate bottom navigation bar
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //list of widgets
  final List<Widget> _pages = [
    UserHome(),
    ChatListPage(),
    UserSettings(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 65,
          margin: const EdgeInsets.only(
            right: 24,
            left: 24,
            bottom: 24,
          ), // EdgeInsets.only
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(10),
                  blurRadius: 10,
                  spreadRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              currentIndex: _selectedIndex,
              onTap: _navigateBottomBar,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              selectedFontSize: 14,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message, color: Colors.white),
                    label: 'Messages'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined, color: Colors.white),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_box_outlined, color: Colors.white),
                    label: 'Add'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}