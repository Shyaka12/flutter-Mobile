import 'package:flutter/material.dart';
import 'package:simple/home.dart';
import 'package:simple/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
  
  void setThemeMode(ThemeMode themeMode) {}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeScreen(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Switch(
            value: _isDarkModeEnabled,
            onChanged: (value) {
              setState(() {
                _isDarkModeEnabled = value;
                ThemeMode themeMode = value ? ThemeMode.dark : ThemeMode.light;
                MyApp().setThemeMode(themeMode);
              });
            },
          ),
        ],
      ),
      body: Center(),
    );
  }
}
