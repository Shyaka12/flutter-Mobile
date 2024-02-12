import 'package:flutter/material.dart';
import 'package:simple/navbar.dart';

import 'calculate.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    ScreenOne(),
    CalculatorScreen(), // Change to CalculatorScreen here
    ScreenThree(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // If the selected index is 1 (which corresponds to the second item in the BottomNavigationBar),
    // Navigate to the CalculatorScreen
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CalculatorScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate), // Icon for the calculator
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
      ),
      drawer: NarBar(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen One'),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.calculate), // Icon for opening the calculator
        onPressed: () {
          // Navigate to the CalculatorScreen
          // Navigator.push(
          //   context
          //   // MaterialPageRoute(builder: (context) => CalculatorScreen()),
          // );
        },
        tooltip: 'Open Calculator App', // Tooltip for the icon
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen Three'),
    );
  }
}
