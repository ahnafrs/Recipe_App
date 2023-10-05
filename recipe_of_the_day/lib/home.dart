import 'package:flutter/material.dart';
import 'package:recipe_of_the_day/screens/explorepage.dart';
import 'package:recipe_of_the_day/screens/recipepage.dart';
import 'package:recipe_of_the_day/screens/tobuypage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    ExplorePage(),
    RecipePage(),
    ToBuyPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                color: _selectedIndex == 0 ? Colors.green : Colors.grey,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_dining,
                color: _selectedIndex == 1 ? Colors.green : Colors.grey,
              ),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: _selectedIndex == 2 ? Colors.green : Colors.grey,
              ),
              label: 'To Buy',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
