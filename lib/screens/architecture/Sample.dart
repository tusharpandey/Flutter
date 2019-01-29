import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/architecture/ParentWidget.dart';

class GenericStateless extends ParentWidget {
  @override
  Widget build(BuildContext context) {
    return super.attachTitle(title);
  }

  @override
  State<StatefulWidget> getWidget() {
    return new GenericStateFullState();
  }
}

class GenericStateFullState extends State<GenericStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
