import 'package:flutter/material.dart';
import 'package:flutter_app/data/OperationData.dart';
import 'package:flutter_app/utils/Strings.dart';

class CustomText extends StatefulWidget {
  ValueChanged onChanged;
  CustomTextState customTextState;

  CustomText() {
    customTextState = new CustomTextState();
  }

  @override
  State<StatefulWidget> createState() {
    return customTextState;
  }

  void setData(String value) {
    customTextState.setData(value);
  }
}

class CustomTextState extends State<CustomText> {
  String value = "0";

  TextStyle style38 = new TextStyle(
    inherit: true,
    color: Colors.black,
    fontSize: 38.0,
  );

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$value',
      style: style38,
      textAlign: TextAlign.right,
      semanticsLabel: "0",
    );
  }

  void setData(String value) {
    this.value = value;
    setState(() {});
  }
}
