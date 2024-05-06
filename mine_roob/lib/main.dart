import 'package:flutter/material.dart';
import 'package:mine_roob/Screens/homeScreen.dart';

import 'package:mine_roob/Screens/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routName,
      routes: myRouters,
    );
  }
}
