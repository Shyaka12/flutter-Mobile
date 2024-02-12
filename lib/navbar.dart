import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              // Navigate to home screen
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Calculater'),
            onTap: () {
              // Navigate to search screen
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About'),
            onTap: () {
              // Navigate to profile screen
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
