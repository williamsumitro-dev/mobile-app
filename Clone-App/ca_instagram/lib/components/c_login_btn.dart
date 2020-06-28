import 'package:flutter/material.dart';

import '../constant.dart';

class CLoginBtn extends StatelessWidget {
  final bool isActive;
  final String text;
  final Icon icon;
  final Function onPressCallBack;

  const CLoginBtn({Key key, this.isActive, this.text, this.icon, this.onPressCallBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive ?
    RawMaterialButton(
      onPressed: onPressCallBack,
      fillColor: kMaterialBlueColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon != null ? icon : Container(),
            SizedBox(
              width: icon !=null ? 5.0 : 0.0,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
    ): RawMaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(15.0),
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      fillColor: kMaterialDarkBlueColor.withOpacity(0.5),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon != null ? icon : Container(),
          SizedBox(
            width: icon !=null ? 5.0 : 0.0,
          ),
          Text(
            text,
            style: TextStyle(
                color: kMaterialBlueColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
