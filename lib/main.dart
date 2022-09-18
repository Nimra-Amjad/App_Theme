// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(),
    );
  }

  Widget HomePage() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Theme"),
      ),
      body: Center(
        child: Text("Hellowww Nimra Amjad!"),
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                  value: darkThemeEnabled,
                  onChanged: (changedTheme) {
                    setState(() {
                      darkThemeEnabled = changedTheme;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
