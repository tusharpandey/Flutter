import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter_app/utils/ShowToast.dart';

Widget myWidget(BuildContext context, String iconName,
    TextEditingController _controller,TextEditingController _controller1, MaterialColor colorBg) {
  TextStyle style38 = new TextStyle(
    inherit: true,
    color: Colors.black,
    fontSize: 38.0,
  );

  EdgeInsets padding =
      new EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0);

  return new Container(
    color: colorBg,
    child: new IntrinsicHeight(
        child: Row(
      children: <Widget>[
        Expanded(
            flex: 4,
            child: Container(
                height: 100,
                child: new Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: <Widget>[
                      Container(
                        child: new Padding(
                            padding: padding,
                            child: TextFormField(
                                decoration: InputDecoration(hintText: "0"),
                                controller: _controller,
                                textAlign: TextAlign.center,
                                style: style38,
                                keyboardType: TextInputType.numberWithOptions())),
                      )
                    ]))),


        Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.only(bottom: 20.0),
                height: 100,
                child: new Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: <Widget>[
                      Container(
                        child: new Image.asset(iconName),
                      )
                    ]))),


        Expanded(
            flex: 4,
            child: Container(
                height: 100,
                child: new Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: <Widget>[
                      Container(
                        child: new Padding(
                            padding: padding,
                            child: TextFormField(
                              controller: _controller1,
                                decoration: InputDecoration(hintText: "0"),
                                textAlign: TextAlign.center,
                                style: style38,
                                keyboardType:
                                    TextInputType.numberWithOptions())),
                      )
                    ]))),
      ],
    )),
  );
}
