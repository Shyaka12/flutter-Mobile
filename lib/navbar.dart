import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple/calculate.dart';
import 'package:simple/home.dart';

class NarBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 136, 5),
            ),
            child: Text(
              'SHYAKA Menu',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculater'),
            onTap: () {
              // Navigate to search screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalculatorScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About'),
            onTap: () {
              // Navigate to profile screen
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomeScreen()),
              // );
            },
          ),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
