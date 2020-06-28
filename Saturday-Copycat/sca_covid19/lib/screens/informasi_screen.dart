import 'package:flutter/material.dart';

class InformasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Image.asset('images/bg1.jpg', height: height / 3, fit: BoxFit.cover, ),
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
                Text('Apa itu virus Covid-19', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0,),),
                SizedBox(height: 10.0,),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.red[100],
                        ),
                        child: Image.asset('images/virus.png', width: 30.0,),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Text('Mengenal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.yellow[100],
                        ),
                        child: Image.asset('images/handwash.png', width: 30.0,),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Text('Mencegah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.blue[100],
                        ),
                        child: Image.asset('images/capsules.png', width: 30.0,),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Text('Mengobati', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.green[100],
                        ),
                        child: Image.asset('images/coronavirus.png', width: 30.0,),
                      ),
                      SizedBox(width: 20.0,),
                      Expanded(
                        child: Text('Mengantisipasi', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
