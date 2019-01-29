import 'package:flutter/material.dart';
import 'package:flutter_app/data/OperationData.dart';
import 'package:flutter_app/screens/section/calculator/layout/ResultLayout.dart';
import 'package:flutter_app/screens/section/calculator/layout/operationlayout.dart';
import 'package:flutter_app/utils/AppConstant.dart';
import 'package:flutter_app/utils/OwnColors.dart';

class OperationWidget extends StatefulWidget {
  OperationData data;
  BuildContext context;

  OperationWidget(OperationData data, BuildContext context) {
    this.data = data;
    this.context = context;
  }

  @override
  State<StatefulWidget> createState() {
    return MyOperationWidgetState(data, context);
  }
}

class MyOperationWidgetState extends State<OperationWidget> {
  OperationData data;
  BuildContext context;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String _value1 = "0";
  String _value2 = "0";

  ResultWidget resultWidget;

  MyOperationWidgetState(OperationData data, BuildContext context) {
    this.data = data;
    this.context = context;
    _controller1.addListener(() => _onTextChanged(AppConstant.controllerID_1));
    _controller2.addListener(() => _onTextChanged(AppConstant.controllerID_2));

    resultWidget = ResultWidget(OwnColors.GRAY_COLOR);
  }

  _onTextChanged(int controllerId) {

    switch(controllerId){
      case AppConstant.controllerID_1:
        _value1 = _controller1.text;
        _value1 = _value1.isEmpty ? "0" : _value1;
        print("value1 : " + _value1);
        break;

      case AppConstant.controllerID_2:
        _value2 = _controller2.text;
        _value2 = _value2.isEmpty ? "0" : _value2;
        print("value2 : " + _value2);
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(data.operationName),
      ),
      body: Container(
        height: double.maxFinite,
        child: new Stack(
          children: <Widget>[
            new Positioned(
              child: myWidget(context, data.iconName, _controller1,_controller2, null),
            ),
            new Positioned(
              child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: resultWidget),
            )
          ],
        ),
      ),
    );
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print("value : OperationWidget" + "$_value1" + " : " + '$_value2');
    resultWidget.setData(_value1, _value2, data.operationName);
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();

    super.dispose();
  }
}

class SecondScreen extends StatelessWidget {

  OperationData data;
  SecondScreen(OperationData data) {
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return OperationWidget(data, context);
  }
}
