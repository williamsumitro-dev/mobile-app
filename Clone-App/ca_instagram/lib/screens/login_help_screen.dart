import 'package:cainstagram/components/c_login_btn.dart';
import 'package:cainstagram/icons/custom_icons_icons.dart';
import 'package:cainstagram/screens/help_center_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'login_screen.dart';

class LoginHelpScreen extends StatefulWidget {
  static const id = "login_help_screen";

  @override
  _LoginHelpScreenState createState() => _LoginHelpScreenState();
}

class _LoginHelpScreenState extends State<LoginHelpScreen> {
  bool _isFbLoginActivate = false, _isBtnActive = false;

  bool checkValidity(String newValue){
    if(newValue.length > 0){
      return true;
    }
    else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Login help',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Text(
                    'Find your account',
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  SizedBox(height: 20,),
                  Text(
                      "Enter your username or the email address or phone number linked to your\u00A0account", style: TextStyle(color: Colors.grey[400]), textAlign: TextAlign.center,),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    maxLines: 1,
                    onChanged: (newValue){
                      setState(() {
                        checkValidity(newValue) ? _isBtnActive = true : _isBtnActive = false;
                      });
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
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
                  CLoginBtn(
                    isActive: _isBtnActive,
                    onPressCallBack: () {},
                    text: 'Next',
                  ),
                  SizedBox(height: 10.0,),
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
                    onHighlightChanged: (value) {
                      if (value) {
                        setState(() {
                          _isFbLoginActivate = true;
                        });
                      } else {
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
                          Icon(
                            CustomIcons.facebook,
                            color: kMaterialBlueColor,
                          ),
                          Text(
                            ' Log In With Facebook',
                            style: TextStyle(
                                color: _isFbLoginActivate
                                    ? kMaterialDarkBlueColor
                                    : kMaterialBlueColor,
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
          RawMaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            padding: EdgeInsets.all(20.0),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {
              Navigator.pushNamed(context, HelpCenterScreen.id);
            },
            child: Text(
              "Need More Help?",
              style: TextStyle(
                color: kMaterialBlueColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
