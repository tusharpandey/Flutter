import 'package:flutter/material.dart';
import 'package:flutter_app/data/OperationData.dart';
import 'dart:core';
import 'package:flutter_app/screens/seondscreen.dart';
import 'package:flutter_app/utils/ImagesUrls.dart';
import 'package:flutter_app/utils/Strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Home Page';

    var data = OperationData();

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(8.0),
                child: new Column(children: [
                  new Column(
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: double.maxFinite,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            data.operationName = Strings.ADDITION;
                            data.iconName = ImagesUrls.addition;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondScreen(data)),
                            );
                          },
                          child: new Text(Strings.ADDITION),
                        ),
                      ),
                      ButtonTheme(
                          minWidth: double.maxFinite,
                          child: new RaisedButton(
                            textColor: Colors.white,
                            color: Colors.red,
                            onPressed: () {
                              data.operationName = Strings.SUBTRACTION;
                              data.iconName = ImagesUrls.subtaction;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen(data)),
                              );
                            },
                            child: new Text(Strings.SUBTRACTION),
                          )),
                      ButtonTheme(
                          minWidth: double.maxFinite,
                          child: new RaisedButton(
                            textColor: Colors.white,
                            color: Colors.green,
                            onPressed: () {
                              data.operationName = Strings.MULTIPLICATION;
                              data.iconName = ImagesUrls.multiplication;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen(data)),
                              );
                            },
                            child: new Text(Strings.MULTIPLICATION),
                          )),
                      ButtonTheme(
                          minWidth: double.maxFinite,
                          child: new RaisedButton(
                            textColor: Colors.white,
                            color: Colors.yellow,
                            onPressed: () {
                              data.operationName = Strings.DIVIDE;
                              data.iconName = ImagesUrls.divide;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen(data)),
                              );
                            },
                            child: new Text(Strings.DIVIDE),
                          )),
                    ],
                  )
                ]))));
  }
}
