import 'package:flutter/material.dart';
import 'package:scacovid19/models/city.dart';


class KasusScreen extends StatefulWidget {
  @override
  _KasusScreenState createState() => _KasusScreenState();
}

class _KasusScreenState extends State<KasusScreen> {
  City city = City();

  @override
  Widget build(BuildContext context) {
    List<String> cityNames = city.cityNames;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Image.asset('images/bg.jpeg', height: height / 3, fit: BoxFit.cover, ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 20.0),
          margin: EdgeInsets.only(top: height/3 - 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color(0xFFeceff1)],
            )
          ),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll){
              overscroll.disallowGlow();
            },
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.green,),
                      SizedBox(width: 20.0,),
                      Expanded(child: Text('Balie'),),
                      Icon(Icons.keyboard_arrow_down, color: Colors.green,),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Text('Update Kasus Covid-19', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0,),),
                SizedBox(height: 10.0,),
                Row(
                  children: <Widget>[
                    Expanded(child: Text('Terakhir diupdate 27 Maret', style: TextStyle(color: Colors.grey),),),
                    Text('Lihat Detail', style: TextStyle(color: Colors.green, decoration: TextDecoration.underline),),
                    Icon(Icons.arrow_forward, color: Colors.green, size: 15.0,),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('9', style: TextStyle(fontSize: 50.0, color: Colors.orange, fontWeight: FontWeight.bold),),
                              Text('Positif', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('0', style: TextStyle(fontSize: 50.0, color: Colors.green, fontWeight: FontWeight.bold),),
                              Text('Sembuh', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('1', style: TextStyle(fontSize: 50.0, color: Colors.red, fontWeight: FontWeight.bold),),
                              Text('Meninggal', style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0,bottom: 10.0),
                        width: double.infinity,
                        height: 20.0,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0),),
                                  color: Colors.orange,
                                ),
                              ),
                              flex: 9,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0), topRight: Radius.circular(20.0),),
                                  color: Colors.red,
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Text('Peta Pesebaran', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0,),),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset('images/map.jpg'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



