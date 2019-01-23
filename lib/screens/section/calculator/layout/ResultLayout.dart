import 'package:flutter/material.dart';
import 'package:flutter_app/views/CustomText.dart';
import 'dart:core';

import 'package:flutter_app/utils/OwnColors.dart';
import 'package:flutter_app/utils/Strings.dart';

class ResultWidget extends StatefulWidget {
  ResultWidgetState resultWidgetState;

  String colorBg;

  ResultWidget(String colorBg) {
    this.colorBg = colorBg;
    resultWidgetState = new ResultWidgetState(colorBg);
  }

  @override
  State<StatefulWidget> createState() {
    return resultWidgetState;
  }

  void setData(String value1, String value2, String operation) {
    resultWidgetState.setData(value1, value2, operation);
  }
}

class ResultWidgetState extends State<ResultWidget> {
  EdgeInsets padding =
      new EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0);
  CustomText textField;
  Color colorBg;
  String value;

  ResultWidgetState(String colorBg) {
    this.colorBg = OwnColors.getColor(colorBg);
    textField = CustomText();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.maxFinite,
      color: colorBg,
      padding: padding,
      child: textField,
    );
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print("value : ResultWidgetState : ");
    textField.setData(value);
  }

  void setData(String value1, String value2, String operation) {
    int val1 = int.parse(value1);
    int val2 = int.parse(value2);

    switch (operation) {
      case Strings.ADDITION:
        this.value = (val1 + val2).toString();
        break;
      case Strings.SUBTRACTION:
        this.value = (val1 - val2).toString();
        break;
      case Strings.MULTIPLICATION:
        this.value = (val1 * val2).toString();
        break;
      case Strings.DIVIDE:
        this.value = (val1 / val2).toString();
        break;
    }
    setState(() {});
  }
}
