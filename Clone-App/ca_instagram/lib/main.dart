import 'package:cainstagram/screens/auth_screen.dart';
import 'package:cainstagram/screens/help_center_screen.dart';
import 'package:cainstagram/screens/login_help_screen.dart';
import 'package:cainstagram/screens/login_screen.dart';
import 'package:cainstagram/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AuthScreen.id,
      routes: <String, WidgetBuilder>{
        AuthScreen.id : (context) => AuthScreen(),
        RegisterScreen.id : (context) => RegisterScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        LoginHelpScreen.id : (context) => LoginHelpScreen(),
        HelpCenterScreen.id : (context) => HelpCenterScreen(),
      },
    );
  }
}
