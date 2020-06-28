import 'package:flutter/material.dart';
import 'package:scacovid19/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: <String, WidgetBuilder>{
        HomeScreen.id : (context) => HomeScreen(),
      },
    );
  }
}
