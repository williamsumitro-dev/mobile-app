import 'package:cainstagram/components/c_login_btn.dart';
import 'package:cainstagram/constant.dart';
import 'package:cainstagram/icons/custom_icons_icons.dart';
import 'package:cainstagram/models/LanguageList.dart';
import 'package:cainstagram/screens/login_screen.dart';
import 'package:cainstagram/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const id = 'auth_screen';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  LanguageList _language = LanguageList();

  TextEditingController _editingController = TextEditingController();
  Color signUpTextColor = kMaterialBlueColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: GestureDetector(
                    child: Text(
                      'English (United Kingdom) ⌵',
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          final languages = _language.getLanguage();
                          return Scaffold(
                            backgroundColor: Colors.transparent,
                            body: Container(
                              padding: EdgeInsets.all(10.0),
                              margin: EdgeInsets.symmetric(
                                horizontal: 50.0,
                              ),
                              color: Colors.grey[800],
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'SELECT YOUR LANGUAGE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        decoration: TextDecoration.none),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    color: Colors.grey[500],
                                  ),
                                  TextField(
                                    controller: _editingController,
                                    decoration: InputDecoration(
                                      hintText: "Search",
                                      prefixIcon: Icon(Icons.search),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                languages
                                                    .elementAt(index)
                                                    .language,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                              Text(
                                                languages
                                                    .elementAt(index)
                                                    .nationality,
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12.0,
                                                    decoration:
                                                        TextDecoration.none),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      itemCount: languages.length,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Instagram',
                          style: TextStyle(
                              fontFamily: 'Lobster',
                              fontSize: 50.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      CLoginBtn(
                        isActive: true,
                        text: 'Log In With Facebook',
                        onPressCallBack: (){},
                        icon: Icon(CustomIcons.facebook, size: 20.0, color: Colors.white,),
                      ),
                      SizedBox(
                        height: 60.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              height: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Divider(
                              height: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      RawMaterialButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onHighlightChanged: (value) {
                          if(value) {
                            setState(() {
                              signUpTextColor = kMaterialDarkBlueColor;
                            });
                          }
                          else{
                            setState(() {
                              signUpTextColor = kMaterialBlueColor;
                            });
                          }
                        },
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterScreen.id);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Sign Up with Email Address or Phone Number',
                            style: TextStyle(
                                color: signUpTextColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                color: Colors.grey[700],
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                padding: EdgeInsets.all(20.0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account ? ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Log in.',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
