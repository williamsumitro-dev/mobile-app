import 'package:flutter/material.dart';
import 'package:scacovid19/icons/custom_icons_icons.dart';
import 'package:scacovid19/screens/bantuan_screen.dart';
import 'package:scacovid19/screens/informasi_screen.dart';
import 'package:scacovid19/screens/kasus_screen.dart';

class HomeScreen extends StatefulWidget {
  static const id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  Widget selectedBody(){
    if(_currentIndex == 0){
      return KasusScreen();
    }
    else if (_currentIndex == 1){
      return InformasiScreen();
    }
    else{
      return BantuanScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.virus),
            title: Text('Kasus'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.information),
            title: Text('Informasi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.cross),
            title: Text('Bantuan'),
          ),
        ],
      ),
    );
  }
}
