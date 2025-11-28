import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/features/presentation/tabs/profile_tab.dart';

import '../../../colors/colors.dart';
import 'explore_tab.dart';
import 'favourite_tab.dart';
import 'my_order_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _WidgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab(),
  ];

  int _selectedIndex = 0;

  void _cambiarWidget(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WidgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).hintColor,
      unselectedItemColor: gris,
      currentIndex: _selectedIndex,
      onTap: _cambiarWidget,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'My order',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Profile',
        )
      ],
    );
  }
}

