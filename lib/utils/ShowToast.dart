import 'package:flutter/material.dart';

class ShowMessage{
  static void showSnackbar(BuildContext context, String message){
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text(message),
    ));
  }
}