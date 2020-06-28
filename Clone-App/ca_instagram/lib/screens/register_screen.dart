import 'package:cainstagram/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RegisterScreen extends StatefulWidget {
  static const id = "register_screen";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPhoneActive, isEmailActive;

  accessContactDialog() {
    return showDialog(
      context: context,
      builder: (BuildContext buildContext) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          contentPadding: EdgeInsets.all(0.0),
          backgroundColor: Colors.grey[800],
          title: Center(
            child: Text(
              'Allow Instagram to:',
              style: TextStyle(color: Colors.white),
            ),
          ),
          content: Builder(builder: (context) {
            var height = MediaQuery.of(context).size.height;
            var width = MediaQuery.of(context).size.width;
            return Container(
              width: width - 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Access your contacts',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300]),
                          ),
                          TextSpan(
                            text:
                                "\nWe'll automatically fill in and confirm your email address for you, making it easier to recover your account if you are locked out.",
                            style: TextStyle(color: Colors.grey[300]),
                          ),
                          TextSpan(
                            text: '\n\nMake and manage phone calls',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[300]),
                          ),
                          TextSpan(
                            text:
                                "\nWe'll automatically fill in and confirm your email address for you, making it easier to recover your account if you are locked out.",
                            style: TextStyle(color: Colors.grey[300]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  RawMaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.grey[900],
                    onPressed: () {},
                    child: Text(
                      'Allow',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kMaterialBlueColor),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  RawMaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.grey[900],
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Deny',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }

  void initProperties() {
    isPhoneActive = true;
    isEmailActive = false;
  }

  @override
  void initState() {
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => accessContactDialog(),
    );
    initProperties();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/user.png',
                      width: 150.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPhoneActive = true;
                                isEmailActive = false;
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'PHONE NUMBER',
                                    style: TextStyle(
                                        color: isPhoneActive
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    height: isPhoneActive ? 2.0 : 1.0,
                                    decoration: BoxDecoration(
                                      color: isPhoneActive
                                          ? Colors.white
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPhoneActive = false;
                                isEmailActive = true;
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'EMAIL ADDRESS',
                                    style: TextStyle(
                                        color: isEmailActive
                                            ? Colors.white
                                            : Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Container(
                                    height: isEmailActive ? 2.0 : 1.0,
                                    decoration: BoxDecoration(
                                      color: isEmailActive
                                          ? Colors.white
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: isPhoneActive ? true : false,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              child: Text('ID +62', style: TextStyle(color: Colors.grey[300]),),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              height: 30.0,
                              color: Colors.black,
                              width: 1.0,
                            ),
                            Flexible(child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(color: Colors.grey[300]),
                                border: InputBorder.none,
                              ),
                              maxLines: 1,
                              cursorColor: Colors.white,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isEmailActive ? true : false,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white),
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            border: InputBorder.none,
                          ),
                          maxLines: 1,
                          cursorColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Visibility(
                      visible: isPhoneActive ? true : false,
                      child: Text(
                        'You may receive SMS updates from Instagram and can opt out at any time.',
                        style: TextStyle(color: Colors.grey[300], fontSize: 11.0),
                      ),
                    ),
                    Visibility(
                      visible: isPhoneActive ? true : false,
                      child: SizedBox(
                        height: 15.0,
                      ),
                    ),
                    RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(15.0),
                      constraints: BoxConstraints(
                        minWidth: double.infinity,
                      ),
                      fillColor: kMaterialDarkBlueColor.withOpacity(0.5),
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: kMaterialBlueColor,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
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
    );
  }
}
