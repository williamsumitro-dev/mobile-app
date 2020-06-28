import 'package:cainstagram/components/c_login_btn.dart';
import 'package:cainstagram/icons/custom_icons_icons.dart';
import 'package:cainstagram/models/LanguageList.dart';
import 'package:cainstagram/screens/auth_screen.dart';
import 'package:cainstagram/screens/help_center_screen.dart';
import 'package:cainstagram/screens/login_help_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class LoginScreen extends StatefulWidget {
  static const id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LanguageList _language = LanguageList();
  bool _isShow = false, _isFbLoginActivate = false;

  TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      height: 30.0,
                    ),
                    TextField(
                      maxLines: 1,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[800],
                        hintText: 'Phone number, email address or username',
                        hintStyle:
                            TextStyle(color: Colors.grey[300], fontSize: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextField(
                      obscureText: !_isShow,
                      maxLines: 1,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isShow = !_isShow;
                            });
                          },
                          child: _isShow
                              ? Icon(
                                  CustomIcons.show,
                                  color: Colors.grey[400],
                                )
                              : Icon(
                                  CustomIcons.hide,
                                  color: Colors.grey[400],
                                ),
                        ),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[800],
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(color: Colors.grey[300], fontSize: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    CLoginBtn(isActive: false,onPressCallBack: (){},text: 'Log In',),
                    RawMaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      padding: EdgeInsets.all(15.0),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: (){
                        Navigator.pushNamed(context, LoginHelpScreen.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Forgotten your login details? ', style: TextStyle(color: Colors.grey, fontSize: 12.0),),
                          Text('Get help with signing in.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12.0),)
                        ],
                      ),
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
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      onHighlightChanged: (value){
                        if(value){
                          setState(() {
                            _isFbLoginActivate = true;
                          });
                        }
                        else{
                          setState(() {
                            _isFbLoginActivate = false;
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(CustomIcons.facebook, color: kMaterialBlueColor,),
                            Text(
                              ' Log In With Facebook',
                              style: TextStyle(
                                  color: _isFbLoginActivate ? kMaterialDarkBlueColor : kMaterialBlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
                Navigator.pushNamed(context, AuthScreen.id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Sign up.',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
